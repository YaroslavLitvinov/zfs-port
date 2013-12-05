NAME=ztest

PROJ_ROOT = ../..
include $(PROJ_ROOT)/Makefile.env

#CFLAGS += -D_KERNEL
CFLAGS += \
-I$(PROJ_ROOT)/lib/libzpool/include \
-I$(PROJ_ROOT)/lib/libavl/include \
-I$(PROJ_ROOT)/lib/libnvpair/include \
-I$(PROJ_ROOT)/lib/libumem/include \
-I$(PROJ_ROOT)/lib/libzfscommon/include \
-I$(PROJ_ROOT)/lib/libsolcompat/include -I$(PROJ_ROOT)/lib/libsolcompat/include/$(ARCH)


SOURCES = ztest.c ../../zfs-test/ptrace.c

LD_LIBRARIES=-lz -lrt -lcontext
LDLIBZPOOL_FLAGS=-L$(PROJ_ROOT)/lib/libzpool -lzpool-user
LDLIBCOMMON_FLAGS=-L$(PROJ_ROOT)/lib/libzfscommon -lzfscommon-user
LDLIBNVPAIR_FLAGS=-L$(PROJ_ROOT)/lib/libnvpair -lnvpair-user
LDLIBSOLCOMPAT_FLAGS=-L$(PROJ_ROOT)/lib/libsolcompat -lsolcompat
LDLIBUMEM_FLAGS=-L$(PROJ_ROOT)/lib/libumem -lumem
LDLIBZVL_FLAGS=-L$(PROJ_ROOT)/lib/libavl -lavl

LDFLAGS += \
$(LDLIBUMEM_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LDLIBZVL_FLAGS) \
$(LDLIBCOMMON_FLAGS) \
$(LDLIBNVPAIR_FLAGS) \
$(LDLIBSOLCOMPAT_FLAGS) \
$(LDLIBZPOOL_FLAGS) \
$(LD_LIBRARIES)



all: $(NAME).nexe config file launch

$(NAME).nexe: $(OBJECTS)
	$(CXX) -o $@ $^ $(LDFLAGS)

config:
	mkdir trace -p
#genmanifest
	TIMEOUT=2000 \
	ABS_PATH=$(CURDIR) \
	NAME=$(NAME) \
	CHANNELS_INCLUDE=channels.manifest.include \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/manifest.template > $(NAME).manifest
#gennvram
	SECONDS=1337012520 \
	VERBOSITY=2 \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/nvram.template  > $(NAME).nvram
#gen gdb script
	NEXE_PATH=$(CURDIR)/$(NAME).nexe \
	$(PROJ_ROOT)/template.sh $(PROJ_ROOT)/debug.template > $(NAME).scp

file:
	rm -f -v $(NAME).zpool.0.cache

launch:
	$(ZEROVM) -M$(NAME).manifest

clean:
	@rm -f -v $(OBJECTS) *.cache *.nvram *.manifest *.scp *.log