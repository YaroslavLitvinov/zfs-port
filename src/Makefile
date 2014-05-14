include Makefile.env

LIBPATH=lib
CFLAGS +=-ggdb -O2  $(INCLUDES)

all:
	@make -C$(LIBPATH)/libavl
	@make -C$(LIBPATH)/libnvpair
	@make -C$(LIBPATH)/libsolkerncompat
	@make -C$(LIBPATH)/libumem
	@make libnvpair-kernel.a    -C$(LIBPATH)/libnvpair
	@make -C$(LIBPATH)/libuutil
	@make -C$(LIBPATH)/libzfs
	@make libzfscommon-kernel.a -C$(LIBPATH)/libzfscommon
	@make libzpool-kernel.a     -C$(LIBPATH)/libzpool

clean:
	@$(CLEAN)

