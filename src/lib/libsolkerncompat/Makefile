PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

CFLAGS +=-D_KERNEL
CFLAGS += -I${ZVM_PREFIX_ABSPATH}/include  #zlib include
CFLAGS += -I./include -I./include/$(ARCH) \
-I$(PROJ_ROOT)/lib/libumem/include \
-I$(PROJ_ROOT)/lib/libavl/include \
-I$(PROJ_ROOT)/lib/libzfscommon/include
OBJECTS += $(ARCH)/atomic.o

all: libsolkerncompat.a

libsolkerncompat.a: $(OBJECTS)
	$(AR) rcs $@ $^

clean:
	@$(CLEAN)