#!/bin/bash
clang_path="${HOME}/prebuilts/clang/host/linux-x86/clang-proton/bin"
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
SUBARCH=arm64 \
CC=${clang_path}/clang \
CLANG_TRIPLE=aarch64-linux-gnu- \
LLVM_AR=${clang_path}/llvm-ar \
LLVM_NM=${clang_path}/llvm-nm \
LD=${clang_path}/ld.lld \
OBJCOPY=${clang_path}/llvm-objcopy \
OBJDUMP=${clang_path}/llvm-objdump \
STRIP=${clang_path}/llvm-strip \
CROSS_COMPILE=${clang_path}/aarch64-linux-gnu-"
make ${args} op5_defconfig
make ${args}

