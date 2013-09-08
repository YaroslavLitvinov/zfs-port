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
 * Copyright 2006 Ricardo Correia.  All rights reserved.
 * Use is subject to license terms.
 */

#ifndef __native_client__

#define thr_self()               pthread_self()
#define thr_equal(a,b)           pthread_equal(a,b)
#define thr_join(t,d,s)          pthread_join(t,s)
#define thr_exit(r)              pthread_exit(r)
#define _mutex_init(l,f,a)       pthread_mutex_init(l,NULL)
#define _mutex_destroy(l)        pthread_mutex_destroy(l)
#define mutex_lock(l)            pthread_mutex_lock(l)
#define mutex_trylock(l)         pthread_mutex_trylock(l)
#define mutex_unlock(l)          pthread_mutex_unlock(l)
#define rwlock_init(l,f,a)       pthread_rwlock_init(l,NULL)
#define rwlock_destroy(l)        pthread_rwlock_destroy(l)
#define rw_rdlock(l)             pthread_rwlock_rdlock(l)
#define rw_wrlock(l)             pthread_rwlock_wrlock(l)
#define rw_tryrdlock(l)          pthread_rwlock_tryrdlock(l)
#define rw_trywrlock(l)          pthread_rwlock_trywrlock(l)
#define rw_unlock(l)             pthread_rwlock_unlock(l)
#define cond_init(l,f,a)         pthread_cond_init(l,NULL)
#define cond_destroy(l)          pthread_cond_destroy(l)
#define cond_wait(l,m)           pthread_cond_wait(l,m)
#define cond_signal(l)           pthread_cond_signal(l)
#define cond_broadcast(l)        pthread_cond_broadcast(l)

#else

#define thr_self()               1
#define thr_equal(a,b)           0
#define thr_join(t,d,s)          0
#define thr_exit(r)              0
#define _mutex_init(l,f,a)       0
#define _mutex_destroy(l)        0
#define mutex_lock(l)            0
#define mutex_trylock(l)         0
#define mutex_unlock(l)          0
#define rwlock_init(l,f,a)       0
#define rwlock_destroy(l)        0
#define rw_rdlock(l)             0
#define rw_wrlock(l)             0
#define rw_tryrdlock(l)          0
#define rw_trywrlock(l)          0
#define rw_unlock(l)             0
#define cond_init(l,f,a)         0
#define cond_destroy(l)          0
#define cond_wait(l,m)           0
#define cond_signal(l)           0
#define cond_broadcast(l)        0

#endif //ZVM_ENABLE

extern void libsolkerncompat_init();
extern void libsolkerncompat_exit();
