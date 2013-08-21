PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

TCFLAGS = $(CFLAGS)
TCFLAGS += -Iinclude 

all: 

libnvpair-user.a: CFLAGS := $(TCFLAGS) \
-I$(PROJ_ROOT)/lib/libsolcompat/include
libnvpair-user.a: $(OBJECTS)
	$(AR) rcs $@ $^
	find -name "*.o" | xargs rm -f


libnvpair-kernel.a: CFLAGS := $(TCFLAGS) \
-D_KERNEL \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include \
-I$(PROJ_ROOT)/lib/libumem/include
libnvpair-kernel.a: $(OBJECTS)
	$(AR) rcs $@ $^
	find -name "*.o" | xargs rm -f

clean:
	@$(CLEAN)