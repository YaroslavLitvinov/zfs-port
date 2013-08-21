

#include <pthread.h> //pthread_cond_t, pthread_mutex_t

#include "zvm_stub.h"

int stub_pthread_cond_wait (pthread_cond_t *cond, pthread_mutex_t *mutex)
{
    (void)cond;
    (void)mutex;
    return 0;
}

int stub_pthread_cond_timedwait (pthread_cond_t *cond,
				 pthread_mutex_t *mutex,
				 const struct timespec *abstime){
    (void)cond;
    (void)mutex;
    (void)abstime;
    return 0;
}
