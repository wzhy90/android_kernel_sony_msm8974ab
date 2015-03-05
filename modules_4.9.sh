#!/bin/bash
### select toolchain
## GCC 4.6 Linaro
#CUR_TC=/home/wzhy90/android-toolchain-eabi-linaro-4.6-2011.10/bin/
## GCC 4.7 Linaro
#CUR_TC=/home/wzhy90/android-toolchain-eabi-linaro-4.7-2013.01/bin/
## GCC 4.9 Linaro
CUR_TC=/home/wzhy90/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.3-2015.02/bin/

### compile kernel
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-eabi- make -j4
#ARCH=arm CROSS_COMPILE=${CUR_TC}arm-gnueabi- make -j4 modules

