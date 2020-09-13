#!/bin/bash
args="-j$(nproc --all) O=out ARCH=arm64 SUBARCH=arm64 CROSS_COMPILE=${HOME}/gcc/bin/aarch64-linux-android-" 
make ${args} O=out op5_defconfig 
make ${args}
