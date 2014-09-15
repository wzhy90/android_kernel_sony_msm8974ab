#!/bin/bash
### GCC 4.9.x

### compile kernel
ARCH=arm CROSS_COMPILE=~/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.04/bin/arm-gnueabi- make CONFIG_DEBUG_SECTION_MISMATCH=y -j8

echo "checking for compiled kernel..."
if [ -f arch/arm/boot/zImage ]
then

echo "generating device tree..."
./dtbToolCM --force-v2 -o ../final_files/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/

### copy zImage
cp arch/arm/boot/zImage ../final_files/.
cp drivers/video/msm/mdss/mhl_sii8620_8061_drv/mhl_sii8620_8061_drv.ko ../final_files/.
cp drivers/net/wireless/bcmdhd/bcmdhd.ko ../final_files/.
~/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.04/bin/arm-gnueabi-strip --strip-unneeded ../final_files/mhl_sii8620_8061_drv.ko
~/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.04/bin/arm-gnueabi-strip --strip-unneeded ../final_files/bcmdhd.ko

echo "DONE"

fi

