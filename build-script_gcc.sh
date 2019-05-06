export USE_CCACHE=1

export CACHE_DIR=~/.ccache


export KBUILD_BUILD_USER=Legion
export KBUILD_BUILD_HOST=N7

export ARCH=arm64
export CROSS_COMPILE=aarch64-linaro-linux-android-
export PATH=/home/legion/Android/kernel/gcc-prebuilts/bin:$PATH


make jolla-kernel_h930_defconfig

make -j8
