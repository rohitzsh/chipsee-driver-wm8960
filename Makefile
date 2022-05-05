DEPMOD  = /sbin/depmod
ARCH := arm
CROSS_COMPILE ?=

MODULE_NAME := snd-soc-wm8960
$(MODULE_NAME)-y += wm8960.o

SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers
