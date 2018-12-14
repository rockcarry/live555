#!/bin/sh

set -e

export PATH=$PWD/../toolchain/arm-linux-gnueabihf-4.8.3/bin:$PATH
export DESTDIR=$PWD/_install

case "$1" in
"")
    if [ ! -f Makefile ]; then
        ./genMakefiles msc3xx
    fi
    make -j8
    make install
    ;;
clean)
    make clean
    ;;
distclean)
    make distclean
    ;;
esac
