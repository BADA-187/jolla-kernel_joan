#!/bin/bash

export USE_CCACHE=1

export CACHE_DIR=~/.ccache


export KBUILD_BUILD_USER=$USER
export KBUILD_BUILD_HOST=BuildHost

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export PATH=~/bin/gcc-linaro-6.5.0-2018.12-x86_64_aarch64-linux-gnu/bin/:~/.ccache:/var/lib/ccache:$PATH

if [ -f $PWD/.config ];then
    echo " - .config Found - "
    echo " - Cleaning - "
    make clean
    make mrproper
fi

make blaze_kernel_defconfig

#make menuconfig

make -j8
