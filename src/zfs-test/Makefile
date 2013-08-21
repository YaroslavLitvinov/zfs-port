PROJ_ROOT = ..
include $(PROJ_ROOT)/Makefile.env

CFLAGS += -D_KERNEL
CFLAGS += \
-I$(PROJ_ROOT)/lib/libavl/include \
-I$(PROJ_ROOT)/lib/libnvpair/include \
-I$(PROJ_ROOT)/lib/libumem/include \
-I$(PROJ_ROOT)/lib/libzfscommon/include \
-I$(PROJ_ROOT)/lib/libzfscommand \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include -I$(PROJ_ROOT)/lib/libsolkerncompat/include/$(ARCH)


SOURCES = test2.c ptrace.c
#../zfs-fuse/zfs_operations.c
#../zfs-fuse/util.c

LD_LIBRARIES=-lz -lrt
LDLIBZPOOL_FLAGS=-L$(PROJ_ROOT)/lib/libzpool -lzpool-kernel
LDLIBCOMMON_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommon -lzfscommon-kernel
LDLIBCOMMAND_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommand -lzfscommand
LDLIBNVPAIR_FLAGS=-L$(PROJ_ROOT)/lib/libnvpair -lnvpair-kernel
LDLIBSOLKERNCOMPAT_FLAGS=-L$(PROJ_ROOT)/lib/libsolkerncompat -lsolkerncompat
LDLIBUMEM_FLAGS=-L$(PROJ_ROOT)/lib/libumem -lumem
LDLIBZVL_FLAGS=-L$(PROJ_ROOT)/lib/libavl -lavl

LDFLAGS += \
$(LDLIBUMEM_FLAGS) \
$(LDLIBCOMMAND_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LDLIBZVL_FLAGS) \
$(LDLIBCOMMON_FLAGS) \
$(LDLIBNVPAIR_FLAGS) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LD_LIBRARIES) \
$(LDLIBCOMMAND_FLAGS) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LDLIBZPOOL_FLAGS)

#include twice some libs to solve unresolved exxternals from libumem, libzfscommand


all: zfs-test.nexe

zfs-test.nexe: $(OBJECTS)
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	@rm -f -v $(OBJECTS)