PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

CFLAGS += -D_KERNEL
CFLAGS += \
-I$(PROJ_ROOT)/lib/libavl/include \
-I$(PROJ_ROOT)/lib/libnvpair/include \
-I$(PROJ_ROOT)/lib/libumem/include \
-I$(PROJ_ROOT)/lib/libzfscommon/include \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include -I$(PROJ_ROOT)/lib/libsolkerncompat/include/$(ARCH)

SOURCES = \
../../zfs-fuse/zfs_rlock.c \
../../zfs-fuse/zfs_vnops.c \
../../zfs-fuse/zfs_log.c \
../../zfs-fuse/zfs_acl.c \
../../zfs-fuse/zfs_dir.c \
../../zfs-fuse/zfs_ioctl.c \
../../zfs-fuse/zfs_vfsops.c \
../../zfs-fuse/zfsfuse_socket.c \
../../zfs-fuse/zvol.c \
../../zfs-fuse/zfs_replay.c

all: libzfscommand.a

libzfscommand.a: $(OBJECTS)
	$(AR) rcs $@ $^

clean:
	@$(CLEAN)
