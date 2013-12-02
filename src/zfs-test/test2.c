
#include <stdio.h>
//#include <sys/vfs.h> //VFS_INIT
#include "libsolkerncompat.h"
//#include <sys/spa.h>
//#include <sys/list_impl.h>
#include <sys/zfs_znode.h> //VTOZ, znode_t
#include <sys/file_aux.h> //FREAD,FWRITE
#include <sys/vnode.h> //vn_open
#include <sys/cred_impl.h> //cred_t
#include <umem.h> /*for umem library initialisation: umem_startup*/
//#include <sys/mount.h> //MS_SYSSPACE

#define ZVM_UMEM_INIT	{						\
      /*call umem library constructor manually for statically linked app*/ \
      umem_startup();							\
      libsolkerncompat_init();						\
  }

#define	kcred		NULL
#define mode            0

extern vfsops_t *zfs_vfsops;

extern int zfs_domount(vfs_t *vfsp, char *osname);
int init_cow_fs(vfs_t **vfsp,  vnode_t **root_vp);
int fini_cow_fs();
int zmkdir(ino_t parent, const char* dirname);

int main(int argc, char** argv){
    vfs_t   *vfsp;
    vnode_t *root_vp;

    /*
     * Init memory manager.
     */
    ZVM_UMEM_INIT;

    ASSERT(!init_cow_fs(&vfsp,&root_vp));

    ASSERT(!zmkdir(VTOZ(root_vp)->z_id, "testdir"));

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

    if ( (error=zfs_domount(*vfsp, "/dev/zfs")) ){
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
