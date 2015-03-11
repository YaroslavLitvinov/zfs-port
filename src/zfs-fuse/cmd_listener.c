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

#include <sys/debug.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/poll.h>
#include <errno.h>

#include <stdio.h>
#include <unistd.h>
#include <fuse/fuse.h>

#include "zfs_ioctl.h"
#include "zfsfuse_socket.h"
#include "util.h"

#define MAX_CONNECTIONS 100

boolean_t exit_listener = B_FALSE;

int cmd_ioctl_req(int sock, zfsfuse_cmd_t *cmd)
{
	dev_t dev = {0};

	cur_fd = sock;
	int ioctl_ret = zfsdev_ioctl(dev, cmd->cmd_u.ioctl_req.cmd, (uintptr_t) cmd->cmd_u.ioctl_req.arg, 0, NULL, NULL);
	cur_fd = -1;

	return zfsfuse_socket_ioctl_write(sock, ioctl_ret);
}

int cmd_mount_req(int sock, zfsfuse_cmd_t *cmd)
{
	uint32_t speclen = cmd->cmd_u.mount_req.speclen;
	uint32_t dirlen = cmd->cmd_u.mount_req.dirlen;
	int32_t optlen = cmd->cmd_u.mount_req.optlen;

	char *spec = malloc(speclen + 1);
	char *dir = malloc(dirlen + 1);
	char *opt = malloc(optlen + 1);

	boolean_t error = spec == NULL || dir == NULL || opt == NULL;

	if(!error && zfsfuse_socket_read_loop(sock, spec, speclen) == -1)
		error = B_TRUE;
	if(!error && zfsfuse_socket_read_loop(sock, dir, dirlen) == -1)
		error = B_TRUE;
	if(!error && zfsfuse_socket_read_loop(sock, opt, optlen) == -1)
		error = B_TRUE;
	if(!error) {
		spec[speclen] = '\0';
		dir[dirlen] = '\0';
		opt[optlen] = '\0';
#ifdef DEBUG
		fprintf(stderr, "mount request: \"%s\", \"%s\", \"%i\", \"%s\"\n", spec, dir, cmd->cmd_u.mount_req.mflag, opt);
#endif
		uint32_t ret = do_mount(spec, dir, cmd->cmd_u.mount_req.mflag, opt);
		write_sock_emu(sock, &ret, sizeof(uint32_t));
	}
	if(opt != NULL) free(opt);
	if(dir != NULL) free(dir);
	if(spec != NULL) free(spec);

	return error ? -1 : 0;
}

void *listener_loop(void *arg)
{
    int *ioctl_fd = (int *) arg;
    {
	/* Handle request */

	zfsfuse_cmd_t cmd;
	int sock = *ioctl_fd;
	if(zfsfuse_socket_read_loop(sock, &cmd, sizeof(zfsfuse_cmd_t)) == -1) {
	    close(sock);
	    *ioctl_fd = -1;
	}

	switch(cmd.cmd_type) {
	case IOCTL_REQ:
	    if(cmd_ioctl_req(sock, &cmd) != 0) {
		close(sock);
		*ioctl_fd = -1;
	    }
	    break;
	case MOUNT_REQ:
	    if(cmd_mount_req(sock, &cmd) != 0) {
		close(sock);
		*ioctl_fd = -1;
	    }
	    break;
	default:
	    abort();
	    break;
	}
    }

    return NULL;
}
