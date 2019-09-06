#!/bin/sh
autoscan;

libtoolize;
aclocal;
autoheader;
autoconf;
automake --add-missing;
clear;
echo "Export [NDK, TOOLCHAIN, CXX(aarch64-linux-android21-clang++), ...]\n";
export NDK=$HOME/Android/Sdk/ndk-bundle
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export AR=$TOOLCHAIN/bin/aarch64-linux-android-ar
export AS=$TOOLCHAIN/bin/aarch64-linux-android-as
export CC=$TOOLCHAIN/bin/aarch64-linux-android21-clang
export CXX=$TOOLCHAIN/bin/aarch64-linux-android21-clang++
export LD=$TOOLCHAIN/bin/aarch64-linux-android-ld
export RANLIB=$TOOLCHAIN/bin/aarch64-linux-android-ranlib
export STRIP=$TOOLCHAIN/bin/aarch64-linux-android-strip
echo "#### Start Configure --host=aarch64-linux-android ####\n";
./configure --host=aarch64-linux-android
#./configure --with-vpnc-script=/etc/vpnc/vpnc-script --disable-nls --enable-static --host=i686-linux-android;
echo "#### make ####\n";
make