
//#include "sys/dmu.h"

#include <stdio.h>
#include "sys/spa.h"
#include "umem.h" /*for umem library initialisation: umem_startup*/

int main(int argc, char** argv){
    libsolkerncompat_init();
    /*I*/
    /* umem_startup(); */
    /* void* test_buf = kmem_alloc( 1, KM_SLEEP); */
    /* spa_init(0); */
    /*II*/
    /* dmu_init(); */
    /* dmu_fini(); */
    return 0;
}
