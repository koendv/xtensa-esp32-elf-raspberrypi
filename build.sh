#!/bin/bash -x
sudo apt-get install git wget libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache libffi-dev libssl-dev dfu-util
sudo apt-get install gawk gperf grep gettext libncurses-dev python python-dev automake bison flex texinfo help2man libtool libtool-bin make
cd
cd src/
mkdir esp
cd esp/
git clone https://github.com/espressif/crosstool-NG.git
cd crosstool-NG/
git checkout esp-2020r2
git submodule update --init
./bootstrap && ./configure --enable-local && make
./ct-ng xtensa-esp32-elf
./ct-ng build
./ct-ng xtensa-esp32s2-elf
./ct-ng build
