#!/bin/sh

set -e

_normpath() {
    python -c "import os.path; print(os.path.normpath('$@'))"
}

ROOT_PATH=$(_normpath "$(dirname "$0")/..")
TOOLCHAIN_PATH=$ROOT_PATH/toolchain_path

unzip_ubuntu(){
    rm -rf $TOOLCHAIN_PATH
    echo "unzip_ubuntu"
    mkdir $TOOLCHAIN_PATH
    cd $ROOT_PATH/Arduino_package/release/
    tar -jxvf ameba_pro2_toolchain_linux-1.0.1-p1.tar.bz2 -C $TOOLCHAIN_PATH
    tar -jxvf ameba_pro2_toolchain_linux-1.0.1-p2.tar.bz2 -C $TOOLCHAIN_PATH
}

echo $OS
echo $OS
echo $OSTYPE
echo $OSTYPE
unzip_ubuntu
echo "END"