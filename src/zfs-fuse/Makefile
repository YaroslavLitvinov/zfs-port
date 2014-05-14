PROJ_ROOT = ..
include $(PROJ_ROOT)/Makefile.env
NAME=zfs-fuse

CFLAGS += -D_KERNEL -DNOIOCTL
CFLAGS += \
-I$(PROJ_ROOT)/lib/libavl/include \
-I$(PROJ_ROOT)/lib/libzfs/include \
-I$(PROJ_ROOT)/lib/libnvpair/include \
-I$(PROJ_ROOT)/lib/libumem/include \
-I$(PROJ_ROOT)/lib/libzfscommon/include \
-I$(PROJ_ROOT)/lib/libsolkerncompat/include \
-I. 

LD_LIBRARIES=-lz -lrt -lcontext -m
LDLIBZPOOL_FLAGS=-L$(PROJ_ROOT)/lib/libzpool -lzpool-kernel
LDLIBCOMMON_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommon -lzfscommon-kernel
LDLIBNVPAIR_FLAGS=-L$(PROJ_ROOT)/lib/libnvpair -lnvpair-kernel
LDLIBSOLKERNCOMPAT_FLAGS=-L$(PROJ_ROOT)/lib/libsolkerncompat -lsolkerncompat
LDLIBUMEM_FLAGS=-L$(PROJ_ROOT)/lib/libumem -lumem
LDLIBAVL_FLAGS=-L$(PROJ_ROOT)/lib/libavl -lavl

LDFLAGS += \
$(LDLIBUMEM_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LDLIBAVL_FLAGS) \
$(LDLIBCOMMON_FLAGS) \
$(LDLIBNVPAIR_FLAGS) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LD_LIBRARIES) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LDLIBZPOOL_FLAGS)

#include twice some libs to solve unresolved externals from libumem


all: $(NAME).nexe config file launch

$(NAME).nexe: $(OBJECTS)
	$(CC) -o $@ $^ $(LDFLAGS)

config:
	mkdir trace -p
	touch $(NAME).pipe
#genmanifest
	TIMEOUT=5000 \
	ABS_PATH=$(CURDIR) \
	NAME=$(NAME) \
	CHANNELS_INCLUDE=channels.manifest.include \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/manifest.template > $(NAME).manifest
#gennvram
	SECONDS=1337012520 \
	VERBOSITY=1 \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/nvram.template  > $(NAME).nvram
#gen gdb script
	NEXE_PATH=$(CURDIR)/$(NAME).nexe \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/debug.template > $(NAME).scp

file:
	rm -f -v $(NAME).zpool.0.cache

launch:
	$(ZEROVM) -M$(NAME).manifest

clean:
	@rm -f -v $(OBJECTS) $(NAME).nexe *.cache *.nvram *.manifest *.scp *.log
