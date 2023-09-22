#!/bin/sh
#sed -i -e 's/\r$//' NAME-OF-FILE.sh

set -e

_normpath() {
    python -c "import os.path; print(os.path.normpath('$@'))"
}

ROOT_PATH=$(_normpath "$(dirname "$0")/..")
TOOLCHAIN_PATH_NAME=toolchain_path
TOOLCHAIN_PATH=$ROOT_PATH/$TOOLCHAIN_PATH_NAME

unzip_ubuntu(){
    rm -rf $TOOLCHAIN_PATH
    echo "unzip_ubuntu"
    mkdir $TOOLCHAIN_PATH
    cd $ROOT_PATH/Arduino_package/release/
    tar -jxvf ameba_pro2_toolchain_linux-1.0.1-p1.tar.bz2 -C ../../$TOOLCHAIN_PATH
    tar -jxvf ameba_pro2_toolchain_linux-1.0.1-p2.tar.bz2 -C ../../$TOOLCHAIN_PATH
    cd ../../$TOOLCHAIN_PATH
    cp -R 1.0.1-p2 1.0.1-p1
}

echo $OS
echo $OS
unzip_ubuntu
echo "END"
