#ifndef __ZVM_STUB_H__
#define __ZVM_STUB_H__

#include "pthread.h" //pthread_cond_t, pthread_mutex_t

extern int stub_pthread_cond_wait (pthread_cond_t *cond, pthread_mutex_t *mutex);
extern int stub_pthread_cond_timedwait (pthread_cond_t *cond,
					pthread_mutex_t *mutex,
					const struct timespec *abstime);


#endif //__ZVM_STUB_H__
