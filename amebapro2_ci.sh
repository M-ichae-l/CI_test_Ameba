#!/bin/sh

toolchain_path = "toolchain"

unzip_ubuntu(){
    echo "unzip_ubuntu"
    mkdir "$toolchain_path"
    echo "$OSYTPE"
    tar -jxvf ameba_pro2_toolchain_linux-1.0.1-p1.tar.bz2 -C "$toolchain_path"
    tar -jxvf ameba_pro2_toolchain_linux-1.0.1-p2.tar.bz2 -C "$toolchain_path"
}

unzip_ubuntu
echo "END"