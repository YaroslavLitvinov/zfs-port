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
-Izrt -I. 

LD_LIBRARIES=-lz -lrt -lcontext -lm
LDLIBZPOOL_FLAGS=-L$(PROJ_ROOT)/lib/libzpool -lzpool-kernel
LDLIBCOMMON_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommon -lzfscommon-kernel
LDLIBNVPAIR_FLAGS=-L$(PROJ_ROOT)/lib/libnvpair -lnvpair-kernel
LDLIBSOLKERNCOMPAT_FLAGS=-L$(PROJ_ROOT)/lib/libsolkerncompat -lsolkerncompat
LDLIBUMEM_FLAGS=-L$(PROJ_ROOT)/lib/libumem -lumem
LDLIBAVL_FLAGS=-L$(PROJ_ROOT)/lib/libavl -lavl
LDLIBZFS_FLAGS=-L$(PROJ_ROOT)/lib/libzfs -lzfs
LDLIBUUTILS_FLAGS=-L$(PROJ_ROOT)/lib/libuutil -luutil

LDFLAGS += \
$(LD_LIBRARIES) \
$(LDLIBUMEM_FLAGS) \
$(LDLIBZFS_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LDLIBAVL_FLAGS) \
$(LDLIBCOMMON_FLAGS) \
$(LDLIBNVPAIR_FLAGS) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LDLIBUUTILS_FLAGS) \
$(LDLIBSOLKERNCOMPAT_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LD_LIBRARIES)
#include twice some libs to solve unresolved externals from libumem

#all: $(NAME).nexe config file launch
all: lib

lib: lib$(NAME).a

$(NAME).nexe: $(OBJECTS)
	$(CC) -o $@ $^ $(LDFLAGS)

lib$(NAME).a: $(OBJECTS)
	$(AR) rcs $@ $^

config:
	mkdir trace -p
	touch $(NAME).pipe
#genmanifest
	TIMEOUT=1000 \
	ABS_PATH=$(CURDIR) \
	NAME=$(NAME) \
	CHANNELS_INCLUDE=channels.manifest.include \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/manifest.template > $(NAME).manifest
#gennvram
	SECONDS=1337012520 \
	VERBOSITY=4 \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/nvram.template  > $(NAME).nvram
#gen gdb script
	NEXE_PATH=$(CURDIR)/$(NAME).nexe \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/debug.template > $(NAME).scp

file:
	rm -f -v $(NAME).zpool.0.cache

launch:
	$(ZEROVM) -s $(NAME).manifest

install:
#based on ZVM_PREFIX, ARCH
	install -d $(INSTALL_INCLUDE_DIR)/ $(INSTALL_LIB_DIR)/zfsfuse
	install -m 0644 -T ./fuse/zfsfuse.h $(INSTALL_INCLUDE_DIR)/fuse/zfs.h
	install -m 0644 libzfs-fuse.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libnvpair/libnvpair-kernel.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libumem/libumem.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libzfs/libzfs.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libavl/libavl.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libsolkerncompat/libsolkerncompat.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libzfscommon/libzfscommon-kernel.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libuutil/libuutil.a $(INSTALL_LIB_DIR)
	install -m 0644 ../lib/libzpool/libzpool-kernel.a $(INSTALL_LIB_DIR)

clean:
	@rm -f -v $(OBJECTS) $(NAME).nexe *.cache *.nvram *.manifest *.scp *.log
