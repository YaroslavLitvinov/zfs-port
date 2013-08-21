include Makefile.env

LIBPATH=lib
CFLAGS +=-ggdb -O2  $(INCLUDES)

all:
	@make -C$(LIBPATH)/libavl
	@make -C$(LIBPATH)/libnvpair
	@make -C$(LIBPATH)/libsolcompat
	@make -C$(LIBPATH)/libsolkerncompat
	@make -C$(LIBPATH)/libumem
	@make libnvpair-user.a      -C$(LIBPATH)/libnvpair
	@make libnvpair-kernel.a    -C$(LIBPATH)/libnvpair
	@make -C$(LIBPATH)/libuutil
	@make -C$(LIBPATH)/libzfs
	@make libzfscommon-user.a   -C$(LIBPATH)/libzfscommon
	@make libzfscommon-kernel.a -C$(LIBPATH)/libzfscommon
	@make libzfscommand.a   -C$(LIBPATH)/libzfscommand
	@make libzpool-kernel.a     -C$(LIBPATH)/libzpool
	@make libzpool-user.a       -C$(LIBPATH)/libzpool 

clean:
	@$(CLEAN)

