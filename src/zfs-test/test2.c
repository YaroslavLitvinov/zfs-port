

////////////
#include <sys/zfs_context.h>
#include <sys/spa.h>
#include <sys/dmu.h>
#include <sys/txg.h>
#include <sys/zap.h>
#include <sys/dmu_traverse.h>
#include <sys/dmu_objset.h>
#include <sys/poll.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/wait.h>
#include <sys/mman.h>
#include <sys/resource.h>
#include <sys/zio.h>
#include <sys/zio_checksum.h>
#include <sys/zio_compress.h>
#include <sys/zil.h>
#include <sys/vdev_impl.h>
#include <sys/spa_impl.h>
#include <sys/dsl_prop.h>
#include <sys/refcount.h>
#include <stdio.h>
#include <stdio_ext.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <umem.h>
#include <dlfcn.h>
#include <ctype.h>
#include <math.h>
#include <sys/fs/zfs.h>

#include <libnvpair.h>
////////////

#include <stdio.h>
#include "libsolkerncompat.h"
#include <sys/zfs_znode.h> //VTOZ, znode_t
#include <sys/file_aux.h> //FREAD,FWRITE
#include <sys/vnode.h> //vn_open
#include <sys/cred_impl.h> //cred_t
#include <umem.h> /*for umem library initialisation: umem_startup*/


#define ZVM_UMEM_INIT	{						\
	/*call umem library constructor manually for statically linked app*/ \
	umem_startup();							\
	libsolkerncompat_init();					\
    }

#define	kcred		NULL
#define mode            0

extern vfsops_t *zfs_vfsops;
static char ztest_dev_template[] = "%s/%s.%llua";
static char *zopt_dir = "/dev";
static char *zopt_pool = "ztest";
static int zopt_ashift = SPA_MINBLOCKSHIFT;
static size_t zopt_vdev_size = SPA_MINDEVSIZE;
static int zopt_verbose = 0;
static int zopt_mirrors = 1;
static int zopt_raidz = 1;

extern int zfs_domount(vfs_t *vfsp, char *osname);
int init_cow_fs(vfs_t **vfsp,  vnode_t **root_vp);
int fini_cow_fs();
int zmkdir(ino_t parent, const char* dirname);
void ztest_init(char *pool);


#define	FATAL_MSG_SZ	1024

char *fatal_msg;

static void
fatal(int do_perror, char *message, ...)
{
    va_list args;
    int save_errno = errno;
    char buf[FATAL_MSG_SZ];

    (void) fflush(stdout);

    va_start(args, message);
    (void) sprintf(buf, "ztest: ");
    /* LINTED */
    (void) vsprintf(buf + strlen(buf), message, args);
    va_end(args);
    if (do_perror) {
	(void) snprintf(buf + strlen(buf), FATAL_MSG_SZ - strlen(buf),
			": %s", strerror(save_errno));
    }
    (void) fprintf(stderr, "%s\n", buf);
    fatal_msg = buf;			/* to ease debugging */
    abort();
}


static void
ztest_walk_pool_directory(char *header)
{
    spa_t *spa = NULL;

    if (zopt_verbose >= 6)
	(void) printf("%s\n", header);

    mutex_enter(&spa_namespace_lock);
    while ((spa = spa_next(spa)) != NULL)
	(void) printf("\t%s\n", spa_name(spa));
    mutex_exit(&spa_namespace_lock);
}


label_offset(uint64_t size, int l)
{
    ASSERT(P2PHASE_TYPED(size, sizeof (vdev_label_t), uint64_t) == 0);
    return (l * sizeof (vdev_label_t) + (l < VDEV_LABELS / 2 ?
					 0 : size - VDEV_LABELS * sizeof (vdev_label_t)));
}


/*
 * Given a file descriptor, read the label information and return an nvlist
 * describing the configuration, if there is one.
 */
int
read_label(nvlist_t **config)
{
    char dev_name[MAXPATHLEN];
    (void) sprintf(dev_name, ztest_dev_template,
		   zopt_dir, zopt_pool, 0);

    int fd = open(dev_name, O_RDONLY);
    if (fd < 0)
	return -1;
    struct stat64 statbuf;
    int l;
    vdev_label_t *label;
    uint64_t state, txg, size;

    *config = NULL;

    if (fstat64(fd, &statbuf) == -1)
	return (0);
    size = P2ALIGN_TYPED(statbuf.st_size, sizeof (vdev_label_t), uint64_t);

    if ((label = malloc(sizeof (vdev_label_t))) == NULL)
	return (-1);

    for (l = 0; l < VDEV_LABELS; l++) {
	if ( lseek64(fd, label_offset(size, l), SEEK_SET ) != 0 )
	    continue;
	if (read(fd, label, sizeof (vdev_label_t) ) != sizeof (vdev_label_t))
	    continue;
	
	if (nvlist_unpack(label->vl_vdev_phys.vp_nvlist,
			  sizeof (label->vl_vdev_phys.vp_nvlist), config, 0) != 0)
	    continue;

	if (nvlist_lookup_uint64(*config, ZPOOL_CONFIG_POOL_STATE,
				 &state) != 0 || state > POOL_STATE_L2CACHE) {
	    nvlist_free(*config);
	    continue;
	}
	
	if (state != POOL_STATE_SPARE && state != POOL_STATE_L2CACHE &&
	    (nvlist_lookup_uint64(*config, ZPOOL_CONFIG_POOL_TXG,
				  &txg) != 0 || txg == 0)) {
	    nvlist_free(*config);
	    continue;
	}

	close(fd);
	free(label);
	return (0);
    }

    close(fd);
    free(label);
    *config = NULL;
    return (-1);
}


static nvlist_t *
make_vdev_file(size_t size)
{
    char dev_name[MAXPATHLEN];
    uint64_t vdev = 0;
    uint64_t ashift = zopt_ashift;
    int fd;
    nvlist_t *file;

    (void) sprintf(dev_name, ztest_dev_template,
		   zopt_dir, zopt_pool, vdev);

    fd = open(dev_name, O_RDWR | O_CREAT | O_TRUNC, 0666);
    if (fd == -1)
	fatal(1, "can't open %s", dev_name);
#ifdef __native_client__
    struct stat64 st;
    int error = fstat64(fd, &st);
    if ( st.st_size < SPA_MINDEVSIZE ){
	/*write foo data into file to expand it up to minimum required size*/
	error = lseek64(fd, st.st_size, SEEK_SET);
	ASSERT(!error);
	int wrote = write(fd, (const void*)0x20000, SPA_MINDEVSIZE-st.st_size);
	ASSERT(wrote>=0 && wrote==SPA_MINDEVSIZE-st.st_size);
	error = fstat64(fd, &st);
	ASSERT(SPA_MINDEVSIZE==st.st_size);
	ASSERT(!error);
    }
#else
    if (ftruncate(fd, size) != 0)
	fatal(1, "can't ftruncate %s", dev_name);
#endif //__native_client__
    (void) close(fd);


    VERIFY(nvlist_alloc(&file, NV_UNIQUE_NAME, 0) == 0);
    VERIFY(nvlist_add_string(file, ZPOOL_CONFIG_TYPE, VDEV_TYPE_FILE) == 0);
    VERIFY(nvlist_add_string(file, ZPOOL_CONFIG_PATH, dev_name) == 0);
    VERIFY(nvlist_add_uint64(file, ZPOOL_CONFIG_ASHIFT, ashift) == 0);

    return (file);
}

static nvlist_t *
make_vdev_root(size_t size, int log, int r, int m, int t)
{
    nvlist_t *root, **child;
    int c;

    ASSERT(t > 0);

    child = umem_alloc(t * sizeof (nvlist_t *), UMEM_NOFAIL);

    /*Assign vdev file as single root child*/
    child[0] = make_vdev_file(size);
    t=1;

    VERIFY(nvlist_alloc(&root, NV_UNIQUE_NAME, 0) == 0);
    VERIFY(nvlist_add_string(root, ZPOOL_CONFIG_TYPE, VDEV_TYPE_ROOT) == 0);
    VERIFY(nvlist_add_nvlist_array(root, ZPOOL_CONFIG_CHILDREN,
				   child, t) == 0);

    for (c = 0; c < t; c++)
	nvlist_free(child[c]);

    umem_free(child, t * sizeof (nvlist_t *));

    return (root);
}


int main(int argc, char** argv){
    /*
     * Init memory manager.
     */
    ZVM_UMEM_INIT;
    zfs_init();
    ztest_init("ztest");

    /* root_write(vp, uio_t *uiop, int ioflag, cred_t *cr, caller_context_t *ct); */
    return 0;
}


int init_cow_fs(vfs_t **vfsp, vnode_t **root_vp ){
    vattr_t vattr;
    int error;

    *vfsp = kmem_zalloc(sizeof(vfs_t), KM_NOSLEEP);
    if(vfsp == NULL)
	return ENOMEM;

    VFS_INIT(*vfsp, zfs_vfsops, 0);
    VFS_HOLD(*vfsp);

    if ( (error=zfs_domount(*vfsp, "/dev/ztest.0a")) ){
	kmem_free(*vfsp, sizeof(vfs_t));
	return error;
    }

    /*
     * Open storage file with filesystem data.
     */
    vn_open( "/dev/zfs",
    	     UIO_SYSSPACE /* UIO_USERSPACE*/ ,
    	     FREAD | FWRITE,
    	     0, root_vp, CRCREAT, 0);

    /*
     * Determine the physical size of the file.
     */
    vattr.va_mask = AT_SIZE;
    if ( (error=VOP_GETATTR(*root_vp, &vattr, 0, kcred, NULL)) )
	return (error);
}


int fini_cow_fs(vnode_t *root_vp){
    vn_close(root_vp);
}

int zmkdir(ino_t parent, const char* dirname)
{
    /*TODO: Create valid struct*/
    vfs_t *vfs = kmem_zalloc(sizeof(vfs_t), KM_NOSLEEP);
    if(vfs == NULL)
	return ENOMEM;

    zfsvfs_t *zfsvfs = vfs->vfs_data;
    ZFS_ENTER(zfsvfs);

    znode_t *znode;

    int error = zfs_zget(zfsvfs, parent, &znode, B_FALSE);
    if(error) {
	ZFS_EXIT(zfsvfs);
	/* If the inode we are trying to get was recently deleted
	   dnode_hold_impl will return EEXIST instead of ENOENT */
	return error == EEXIST ? ENOENT : error;
    }

    ASSERT(znode != NULL);
    vnode_t *dvp = ZTOV(znode);
    ASSERT(dvp != NULL);

    vnode_t *vp = NULL;

    vattr_t vattr = { 0 };
    vattr.va_type = VDIR;
    vattr.va_mode = mode & PERMMASK;
    vattr.va_mask = AT_TYPE | AT_MODE;

    /*Initialize with empty permission ids*/
    cred_t cred;
    cred.cr_uid=cred.cr_gid=0;

    error = VOP_MKDIR(dvp, (char *) dirname, &vattr, &vp, &cred, NULL, 0, NULL);
    if(error)
	goto out;

    ASSERT(vp != NULL);

    /* int new_parent = VTOZ(vp)->z_id; */
    /* struct stat st; */

    /* error = zfsfuse_stat(vp, &st, &cred); */

 out:
    if(vp != NULL)
	VN_RELE(vp);
    VN_RELE(dvp);
    ZFS_EXIT(zfsvfs);

    return error;
}

/*
 * Create a storage pool with the given name and initial vdev size.
 * Then create the specified number of datasets in the pool.
 */
void
ztest_init(char *pool)
{
    spa_t *spa;
    int error;
    nvlist_t *nvroot;
    int vdev_file_seems_valid;
    vfs_t   *vfsp;
    vnode_t *root_vp;


#ifndef _KERNEL
    kernel_init(FREAD | FWRITE);
#else
    spa_init(FREAD | FWRITE);
#endif

#ifdef DEBUG
    printf("SPA_MINDEVSIZE=%u\n", SPA_MINDEVSIZE);
#endif

    /*
     * Create the storage pool.
     */
    (void) spa_destroy(pool);

    //p (&spa_namespace_avl)->avl_root
    //in order to mount
    //	zfs_prop_init();
    //	zpool_prop_init();
    //  (share_mount(OP_MOUNT, argc, argv));
    //      zfs_open(libzfs_handle_t *hdl, const char *path, int types)
    //      share_mount_one(zhp, op, flags, NULL, B_TRUE, options )
    //      zfs_mount(zhp, options, flags)
    //zfsfuse_mount (hdl=0x653f40, spec=0x655d40 "file", dir=0x7fffffffa3b0 "/file", mflag=0, fstype=0x44004d "fuse", dataptr=0x0, datalen=0, optptr=0x7fffffffb3b0 "", optlen=0) at lib/libzfs/libzfs_zfsfuse.c:196
    //do_mount(spec, dir, cmd->cmd_u.mount_req.mflag, opt);
    //zfs_domount (vfsp=0x7ffff4116ea0, osname=0x7ffff410f000 "file") at zfs-fuse/zfs_vfsops.c:673
    

    if ( read_label(&nvroot) == 0 ){
	nvlist_print(stdout, nvroot);

	/*Try to mount existing */
	/* zfs_handle_t zhp; */
	/* if ( (error = zfs_mount(&zhp, "", 0)) ) */
	/*     fatal(0, "zfs_mount() = %d", error); */

	/*Try to open existing */
	/* if ( (error = spa_import(pool, nvroot, NULL) ) ) */
	/*     fatal(0, "spa_import() = %d", error); */
    }
    else{
	nvroot = make_vdev_root(zopt_vdev_size, 0, zopt_raidz, zopt_mirrors, 1);
	if ( (error = spa_create(pool, nvroot, NULL, NULL, NULL) ) )
	    fatal(0, "spa_create() = %d", error);
	nvlist_print(stdout, nvroot);
    }
    
    if ( (error = spa_open(pool, &spa, FTAG) ) )
	fatal(0, "spa_open() = %d", error);

    if (zopt_verbose >= 3)
	show_pool_stats(spa);

    //
    show_pool_stats(spa); /*contains spa_config_generate*/
    nvlist_print(stdout, nvroot);
    //

    ASSERT(!init_cow_fs(&vfsp,&root_vp));
    ASSERT(!zmkdir(VTOZ(root_vp)->z_id, "testdir"));

    nvlist_free(nvroot);
    spa_close(spa, FTAG);

#ifndef _KERNEL
    kernel_fini();
#else
    spa_fini();
#endif
}
