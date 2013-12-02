


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

int main(int argc, char** argv){
    ZVM_UMEM_INIT;

    int c=0;
    int i;
    const int size = 1024*1024;
    for (i=0; i < 1000000; i++){
	//      c+=size+i;
	//	printf("i=%d alloc size=%d, all allocated size=%d\n", 
	//       i, size+i, c );
	void* addr = umem_alloc(size, UMEM_NOFAIL);
	if ( addr != NULL ){
	    umem_free(addr, size);
	}
    }

    /* write to default device (in our case it is stdout) */
    printf("hello, world\n");

    /* write to user log (stderr) */
    fprintf(stderr, "hello, world\n");

    return 0;
}
