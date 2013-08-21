PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

TCFLAGS = $(CFLAGS)
TCFLAGS += -I./include 
TCFLAGS += -I$(PROJ_ROOT)/lib/libumem/include 
TCFLAGS += -I$(PROJ_ROOT)/lib/libavl/include
TCFLAGS += -I$(PROJ_ROOT)/lib/libnvpair/include

all: libzfscommon-user.a libzfscommon-kernel.a

libzfscommon-user.a: CFLAGS := $(TCFLAGS) \
-I$(PROJ_ROOT)/lib/libzpool/include \
-I$(PROJ_ROOT)/lib/libsolcompat/include \
-I$(PROJ_ROOT)/lib/libsolcompat/include/$(ARCH)
libzfscommon-user.a: $(OBJECTS)
	$(AR) rcs $@ $^
	find -name "*.o" | xargs rm -f

libzfscommon-kernel.a: CFLAGS := $(TCFLAGS) \
-D_KERNEL \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include/$(ARCH)
libzfscommon-kernel.a: $(OBJECTS)
	$(AR) rcs $@ $^
	find -name "*.o" | xargs rm -f

clean:
	@$(CLEAN)