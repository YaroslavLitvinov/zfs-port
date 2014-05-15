PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

TCFLAGS = $(CFLAGS)
TCFLAGS += -I$(PROJ_ROOT)/lib/libavl/include -I$(PROJ_ROOT)/lib/libavl/include
TCFLAGS += -I$(PROJ_ROOT)/lib/libnvpair/include -I$(PROJ_ROOT)/lib/libnvpair/include
TCFLAGS += -I$(PROJ_ROOT)/lib/libzfscommon/include -I$(PROJ_ROOT)/lib/libzfscommon/include
TCFLAGS += -I$(PROJ_ROOT)/lib/libumem/include -I$(PROJ_ROOT)/lib/libavl/include
TCFLAGS += -I${ZVM_PREFIX_ABSPATH}/include  #zlib include

NOT_KERNEL_OBJECTS = $(CURDIR)/kernel.o $(CURDIR)/taskq.o
KOBJECTS := $(filter-out $(NOT_KERNEL_OBJECTS),$(OBJECTS))

all: libzpool-kernel.a libzpool-user.a

#build libzpool kernel version, remove unwanted files
libzpool-kernel.a: CFLAGS := $(TCFLAGS) \
-D_KERNEL \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include -I$(PROJ_ROOT)/lib/libsolkerncompat/include/$(ARCH)
libzpool-kernel.a: $(KOBJECTS)
	$(AR) rcs $@ $^
	find -name "*.o" | xargs rm -f

clean:
	@$(CLEAN)