#!/bin/bash
### select toolchain
## GCC 4.6 Linaro
#CUR_TC=/home/wzhy90/linaro/bin/
CUR_TC=/home/wzhy90/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1/bin/

### compile kernel
#ARCH=arm CROSS_COMPILE=${CUR_TC}arm-eabi- make -j4
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-gnueabi- make -j4

if [ "$?" != 0 ]
then
echo "There are some errors when making files..."
else
echo "checking for compiled kernel..."
if [ -f arch/arm/boot/zImage ]
then

echo "generating device tree..."
if [ ! -d ./final_files ]
then
mkdir ./final_files
fi
./dtbToolCM --force-v2 -o ./final_files/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/

### copy zImage
cp arch/arm/boot/zImage ./final_files/.
#cp drivers/char/adsprpc.ko ./final_files/.
#cp arch/arm/mach-msm/qdsp6v2/adsp-loader.ko ./final_files/.
#cp net/wireless/cfg80211.ko ./final_files/.
#cp drivers/staging/prima/wlan.ko ./final_files/pronto_wlan.ko
#~/linaro/bin/arm-linux-androideabi-strip --strip-unneeded ./final_files/adsprpc.ko
#~/linaro/bin/arm-linux-androideabi-strip --strip-unneeded ./final_files/adsp-loader.ko
#~/linaro/bin/arm-linux-androideabi-strip --strip-unneeded ./final_files/cfg80211.ko 
#~/linaro/bin/arm-linux-androideabi-strip --strip-unneeded ./final_files/pronto_wlan.ko

echo "DONE"

fi
fi
