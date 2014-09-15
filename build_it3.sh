#!/bin/bash
### GCC 4.8.x

### compile kernel
ARCH=arm CROSS_COMPILE=~/arm-cortex_a15-linux-gnueabihf-linaro_4.8.3-2014.03/bin/arm-gnueabi- make -j8

echo "checking for compiled kernel..."
if [ -f arch/arm/boot/zImage ]
then

echo "generating device tree..."
./dtbToolCM --force-v2 -o ../final_files/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/

### copy zImage
cp arch/arm/boot/zImage ../final_files/.
cp drivers/char/adsprpc.ko ../final_files/.
cp arch/arm/mach-msm/qdsp6v2/adsp-loader.ko ../final_files/.
cp net/wireless/cfg80211.ko ../final_files/.
~/arm-cortex_a15-linux-gnueabihf-linaro_4.8.3-2014.03/bin/arm-gnueabi-strip --strip-unneeded ../final_files/adsprpc.ko
~/arm-cortex_a15-linux-gnueabihf-linaro_4.8.3-2014.03/bin/arm-gnueabi-strip --strip-unneeded ../final_files/adsp-loader.ko
~/arm-cortex_a15-linux-gnueabihf-linaro_4.8.3-2014.03/bin/arm-gnueabi-strip --strip-unneeded ../final_files/cfg80211.ko 

echo "DONE"

fi

