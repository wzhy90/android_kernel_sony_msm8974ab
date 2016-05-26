#!/bin/bash
### select toolchain
## GCC 4.6 Linaro
#CUR_TC=/home/wzhy90/android-toolchain-eabi-linaro-4.6-2011.10/bin/
## GCC 4.7 Linaro
#CUR_TC=/home/wzhy90/android-toolchain-eabi-linaro-4.7-2013.01/bin/
## GCC 4.9 Linaro
CUR_TC=/home/wzhy90/arm-cortex_a15-linux-gnueabihf-linaro_4.9/bin/
## GCC 4.9 SaberMod
#CUR_TC=/home/wzhy90/toolchain-arm_sabermod-gcc-4.9/bin/
## GCC 4.8 Uber
#CUR_TC=/home/wzhy90/toolchain-arm_uber-gcc-4.9/bin/

### compile kernel
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-eabi- make menuconfig
#ARCH=arm CROSS_COMPILE=${CUR_TC}arm-gnueabi- make menuconfig

