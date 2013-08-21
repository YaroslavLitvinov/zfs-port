PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

#CFLAGS += -D_KERNEL
CFLAGS += \
-I$(PROJ_ROOT)/lib/libzpool/include \
-I$(PROJ_ROOT)/lib/libuutil/include \
-I$(PROJ_ROOT)/lib/libavl/include \
-I$(PROJ_ROOT)/lib/libnvpair/include \
-I$(PROJ_ROOT)/lib/libumem/include \
-I$(PROJ_ROOT)/lib/libzfs/include \
-I$(PROJ_ROOT)/lib/libzfscommon/include \
-I$(PROJ_ROOT)/zfs-fuse \
-I$(PROJ_ROOT)/lib/libsolcompat/include -I$(PROJ_ROOT)/lib/libsolcompat/include/$(ARCH)


SOURCES = zpool_iter.c zpool_main.c zpool_util.c zpool_vdev.c ptrace.c

LD_LIBRARIES=-lz -lrt
LDLIBZPOOL_FLAGS=-L$(PROJ_ROOT)/lib/libzpool -lzpool-user
LDLIBUUTILS_FLAGS=-L$(PROJ_ROOT)/lib/libuutil -luutil
LDLIBZFS_FLAGS=-L$(PROJ_ROOT)/lib/libzfs -lzfs
LDLIBCOMMON_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommon -lzfscommon-user
LDLIBCOMMAND_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommand -lzfscommand
LDLIBNVPAIR_FLAGS=-L$(PROJ_ROOT)/lib/libnvpair -lnvpair-user
LDLIBSOLKERNCOMPAT_FLAGS=-L$(PROJ_ROOT)/lib/libsolcompat -lsolcompat
LDLIBUMEM_FLAGS=-L$(PROJ_ROOT)/lib/libumem -lumem
LDLIBZVL_FLAGS=-L$(PROJ_ROOT)/lib/libavl -lavl

LDFLAGS += \
$(LDLIBUMEM_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LDLIBUUTILS_FLAGS) \
$(LDLIBZVL_FLAGS) \
$(LDLIBZFS_FLAGS) \
$(LDLIBCOMMON_FLAGS) \
$(LDLIBNVPAIR_FLAGS) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LD_LIBRARIES)

#$(LDLIBCOMMAND_FLAGS)

#include twice some libraries to solve unresolved exxternals


all: zpool.nexe

zpool.nexe: $(OBJECTS)
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	@rm -f -v $(OBJECTS)