/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License, Version 1.0 only
 * (the "License").  You may not use this file except in compliance
 * with the License.
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
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#ifndef _SOL_UNISTD_AUX_H
#define _SOL_UNISTD_AUX_H

#include <unistd.h>

/* It seems Solaris only returns positive host ids */
static inline long fake_gethostid()
{
	long id = gethostid();
	return id >= 0 ? id : -id;
}

static ssize_t 
compat_pread(int fd, void *buf, size_t count, off_t offset){
    int ret;
    if ( (ret=lseek64(fd, offset, SEEK_SET)) != offset )
	return -1;
    ret=read(fd, buf, count);
    return ret;
}

static ssize_t 
compat_pwrite(int fd, const void *buf, size_t count, off_t offset){
    int ret;
    if ( (ret=lseek64(fd, offset, SEEK_SET)) != offset )
	return ret;
    ret = write(fd, buf, count);
    return ret;
}


#define gethostid() fake_gethostid()
#define pread64  compat_pread
#define pwrite64 compat_pwrite
#define pread    compat_pread
#define pwrite   compat_pwrite

#endif
