#!/bin/bash
### GCC 4.9.x

### get defconfig
ARCH=arm CROSS_COMPILE=~/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.04/bin/arm-gnueabi- make shinano_sirius_defconfig
