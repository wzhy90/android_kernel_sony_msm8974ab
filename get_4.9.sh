#!/bin/bash
### select toolchain
## GCC 4.6 Linaro
#CUR_TC=/home/wzhy90/linaro/bin/
CUR_TC=/home/wzhy90/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1/bin/

### compile kernel
#ARCH=arm CROSS_COMPILE=${CUR_TC}arm-eabi- make shinano_sirius_defconfig
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-gnueabi- make shinano_sirius_defconfig

