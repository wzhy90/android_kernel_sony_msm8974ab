#!/bin/bash
### select toolchain
## GCC 4.4.3
##CUR_TC=/home/wzhy90/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/
## GCC 4.6 Linaro
CUR_TC=/home/wzhy90/linaro/bin/
### GCC 4.7 Linaro
#CUR_TC=/home/wzhy90/android-toolchain-eabi-linaro-4.7-2013.01/bin/

### compile kernel
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-eabi- make shinano_sirius_defconfig
#ARCH=arm CROSS_COMPILE=~/arm-linux-androideabi-4.7/bin/arm-linux-androideabi- make shinano_sirius_defconfig

