#!/bin/bash
### GCC 4.9.x

### clean
ARCH=arm CROSS_COMPILE=~/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.04/bin/arm-gnueabi- make distclean

### delete additional generated files
rm ./arch/arm/boot/zImage-dtb
rm ./arch/arm/mach-msm/smd_rpc_sym.c

