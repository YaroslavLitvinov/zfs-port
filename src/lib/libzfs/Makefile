PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

CFLAGS += -I$(PROJ_ROOT)/lib/libsolcompat/include -I$(PROJ_ROOT)/lib/libsolcompat/include/$(ARCH)
CFLAGS += -I${ZVM_PREFIX_ABSPATH}/include  #zlib include
CFLAGS += -include "pth/pthread.h"
CFLAGS += -I. -I./include -I$(PROJ_ROOT)/lib/libumem/include -I$(PROJ_ROOT)/lib/libavl/include
CFLAGS += -I$(PROJ_ROOT)/lib/libnvpair/include -I$(PROJ_ROOT)/lib/libzfscommon/include
CFLAGS += -I$(PROJ_ROOT)/lib/libzpool/include -I$(PROJ_ROOT)/lib/libuutil/include 
CFLAGS += -I$(PROJ_ROOT)/zfs-fuse

all: libzfs.a

libzfs.a: $(OBJECTS)
	$(AR) rcs $@ $^

clean:
	@$(CLEAN)