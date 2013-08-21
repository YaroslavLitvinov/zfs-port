PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

CFLAGS +=-D_KERNEL
#CFLAGS += -I./include -I$(PROJ_ROOT)/lib/libsolcompat/include
CFLAGS += -I./include -I$(PROJ_ROOT)/lib/libsolkerncompat/include

all: libavl.a

libavl.a: $(OBJECTS)
	$(AR) rcs $@ $^

clean:
	@$(CLEAN)