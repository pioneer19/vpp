#!/bin/bash

# git checkout lsdk
# /home/san/yocto-sdk/build_lx2160ardb/tmp/work/x86_64-linux/gcc-cross-aarch64/9.3.0-r0/sysroot-destdir/home/san/yocto-sdk/build_lx2160ardb/tmp/work/x86_64-linux/gcc-cross-aarch64/9.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-fsl-linux/aarch64-fsl-linux-gcc
export ROOT_FS=/home/san/yocto-sdk/build_lx2160ardb/tmp/work/lx2160ardb-fsl-linux/fsl-image-networking-full/1.0-r0/rootfs
export COMPILER_BIN_DIR=/home/san/yocto-sdk/build_lx2160ardb/tmp/work/x86_64-linux/gcc-cross-aarch64/9.3.0-r0/sysroot-destdir/home/san/yocto-sdk/build_lx2160ardb/tmp/work/x86_64-linux/gcc-cross-aarch64/9.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-fsl-linux
export C_COMPILER_NAME=aarch64-fsl-linux-gcc
export CXX_COMPILER_NAME=aarch64-fsl-linux-g++
export CROSS_SYSROOT=$ROOT_FS

#export CROSS_PREFIX=aarch64-linux-gnu
#export CROSS_TOOLCHAIN=/usr
#export CROSS_SYSROOT=$(RFSDIR)
export ARCH=arm64
export OPENSSL_PATH=$ROOT_FS/usr

#export EXTRA_INC=$(RFSDIR)/usr/include/aarch64-linux-gnu
#export EXTRA_LIBS=$(RFSDIR)/lib/aarch64-linux-gnu
export DPDK_PATH=/home/san/yocto-sdk/build_lx2160ardb/tmp/work/lx2160ardb-fsl-linux/dpdk/19.11-r0/sysroot-destdir
#export LD_LIBRARY_PATH=$(DESTDIR)/usr/local/dpdk4vpp/lib:$(RFSDIR)/lib/aarch64-linux-gnu

export PLATFORM=dpaa

#sudo cp -f $(DESTDIR)/usr/local/dpdk4vpp/lib/librte* $(RFSDIR)/usr/local/lib/

make install-dep
cd build-root
#$(MAKE) distclean
make V=1 PLATFORM=dpaa TAG=dpaa build
#$(MAKE) V=1 PLATFORM=dpaa TAG=dpaa build-release

#mkdir -p $(DESTDIR)/usr/local/vpp && cp -vf *.deb $(DESTDIR)/usr/local/vpp && \
#sudo cp -f $(DESTDIR)/usr/local/lib/librte* $(RFSDIR)/usr/local/lib/ && \
