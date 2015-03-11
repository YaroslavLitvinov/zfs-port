/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */
/*
 * Copyright 2006 Ricardo Correia.
 * Use is subject to license terms.
 */

#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <signal.h>
#include <getopt.h>

#include "util.h"

#ifdef NOIOCTL
#include <ctype.h>
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <libgen.h>
#include <libintl.h>
#include <sys/nvpair.h>
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <unistd.h>
#include <pwd.h>
#include <sys/fs/zfs.h>
#include <sys/mount.h>
#include <sys/systm.h>
#include <sys/stat.h>

#include <libzfs.h>

#include <fs/open_file_description.h>
#include <fs/handle_allocator.h>
#include <fs/dirent_engine.h>
#include <fs/user_space_fs.h>
#include <fs/mounts_interface.h> //struct MountsPublicInterface


#include "zfs_comutil.h"
#include "zfs_filesystem.h"
#include "zfs_toplevel_filesystem.h"
#include "new_zpool_util.h"
#include "zfs_mounts.h"
#include "zfs_operations.h"

pthread_t storage_create_thread_id;
//pthread_t listener_thread_id;

#endif //NOIOCTL

#define ZVM_UMEM_INIT	{						\
	/*call umem library constructor manually for statically linked app*/ \
	umem_startup();							\
	libsolkerncompat_init();					\
    }


static const char *cf_pidfile = NULL;
static int cf_daemonize = 1;

extern char *optarg;
extern int optind, opterr, optopt;

extern vfsops_t *zfs_vfsops;
extern vfs_t*  s_vfs;
vfs_t*  s_vfs;

static vfs_t* prepare_storage(zfs_handle_t *zfs_handle, char* name, char* mountdir){
	char mountpoint[ZFS_MAXPROPLEN];

	if (!zfs_is_mountable(zfs_handle, mountpoint, sizeof (mountpoint), NULL))
	    return (0);

	vfs_t *vfs = kmem_zalloc(sizeof(vfs_t), KM_SLEEP);
	if(vfs == NULL){
	    errno = ENOMEM;
	    return NULL;
	}

	VFS_INIT(vfs, zfs_vfsops, 0);
	VFS_HOLD(vfs);

	struct mounta uap = {name, mountdir, MS_SYSSPACE, NULL, "", 0};
	int ret;
	if ((ret = VFS_MOUNT(vfs, rootdir, &uap, kcred)) != 0) {
	    kmem_free(vfs, sizeof(vfs_t));
	    return NULL;
	}
	return vfs;
}

static int create_storage(char* storage_path, char* name, char* mountdir){
	int ret;
	nvlist_t *nvroot;
	nvlist_t *fsprops = NULL;
	nvlist_t *props = NULL;
	boolean_t force = B_FALSE;
	boolean_t dryrun = B_FALSE;
	char* mountpoint = NULL;

	if ((g_zfs = libzfs_init()) == NULL) {
		(void) fprintf(stderr, gettext("internal error: failed to "
		    "initialize ZFS library\n"));
		return (1);
	}

	/* pass off to get_vdev_spec for bulk processing */
	nvroot = make_root_vdev(NULL, force, !force, B_FALSE, dryrun,
	    1, &storage_path);
	if (nvroot == NULL)
		goto errout;

	/* make_root_vdev() allows 0 toplevel children if there are spares */
	if (!zfs_allocatable_devs(nvroot)) {
		(void) fprintf(stderr, gettext("invalid vdev "
		    "specification: at least one toplevel vdev must be "
		    "specified\n"));
		goto errout;
	}

	/*
	 * Hand off to libzfs.
	 */
	if (zpool_create(g_zfs, name,
			 nvroot, props, fsprops) == 0) {
	    zfs_handle_t *pool = zfs_open(g_zfs, name,
					  ZFS_TYPE_FILESYSTEM);
	    if (pool != NULL) {
		if (mountpoint != NULL)
		    verify(zfs_prop_set(pool,
					zfs_prop_to_name(
							 ZFS_PROP_MOUNTPOINT),
					mountpoint) == 0);
		s_vfs = prepare_storage(pool, name, mountdir);
		zfs_close(pool);
	    }
	} else if (libzfs_errno(g_zfs) == EZFS_INVALIDNAME) {
	    (void) fprintf(stderr, gettext("pool name may have "
					   "been omitted\n"));
	}

errout:
	nvlist_free(nvroot);
	nvlist_free(fsprops);
	nvlist_free(props);
	return (ret);
}

static void* storage_create_thread(void* obj){
	(void)obj;
	create_storage("/dev/zfs", "file", "/file");
	return NULL;
}

int zfsfuse_main(int argc, char *argv[])
{
	int ret;

	ZVM_UMEM_INIT;

	if(do_init() != 0) {
		do_exit();
		return 1;
	}

	VERIFY(pthread_create(&storage_create_thread_id, NULL, storage_create_thread, NULL) == 0);

	/* wait for all threads to complete */
	ret = pthread_join(storage_create_thread_id, NULL);
	assert(0 == ret);
	assert(s_vfs);

#define FUSE_ENABLED 1

#ifdef FUSE_ENABLED
        /*Interface #1:/*
         /*fuse mount interface, fuse interface implementation: struct
         fuse_operation. Use this interface as stantard interface
         instead of MountsPublicInterface
        */
	struct fuse_operations* fuse_op = CONSTRUCT_L(FUSE_OPERATIONS)(s_vfs);
	assert(fuse_op);
	//gdb --annotate=3 --args zfs-fuse/zfs-fuse -s -odirect_io -d  /home/zvm/git/zfs-prezerovm/src/zfs-fuse/mountpoint
	ret = fuse_main(argc, argv, fuse_op);
#else
        /*Interface #2:*/
        /*zrt old-style mount, can be used as backup for another mount
          method not used instead of fuse_operations interface.
        Before */
	struct MountsPublicInterface* zfs_mounts = CONSTRUCT_L(ZFS_MOUNTS)(s_vfs);
	assert(zfs_mounts);
	ret = mount_user_fs(zfs_mounts, "/zfs");
#endif

        /*The return code is expected to be ret==0 forever. Assert it
          if the return code is bad.*/
	assert(ret==0);

	struct stat st;
	ret = stat("/zfs", &st);
	assert(ret==0);
	
	ret = mkdir("/zfs/dir", 0666);
	assert(ret==0);

	ret = stat("/zfs/dir", &st);
	assert(ret==0);

	do_exit();
	return ret;
}
