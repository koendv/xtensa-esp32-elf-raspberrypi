#!/bin/sh -x
mkdir deb
mkdir deb/opt
mkdir deb/DEBIAN
cat > deb/DEBIAN/control <<EOD
Package: xtensa-esp32-elf
Version: 8.2.0-2020r2
Maintainer: Koen <koen@mcvax.org>
Priority: optional
Section: devel
Bugs: https://github.com/koendv/xtensa-esp32-elf-raspberrypi/issues
Homepage: https://github.com/koendv/xtensa-esp32-elf-raspberrypi
Depends: automake, bison, build-essential, ccache, cmake, dfu-util, flex, gawk, gettext, git, gperf, grep, help2man, libffi-dev, libncurses-dev, libssl-dev, libtool, libtool-bin, make, ninja-build, python, python-click, python-cryptography, python-dev, python-future, python-pip, python-pyelftools, python-pyparsing, python-serial, python-setuptools, texinfo, wget
Architecture: arm64
Description: esp32/esp32s2 gcc cross-compiler toolchain
 compiled for raspberry pi 4 running 2020-05-27-raspios-buster-arm64
EOD
sudo mv ./builds/xtensa-esp32-elf ./deb/opt
sudo mv ./builds/xtensa-esp32s2-elf ./deb/opt
fakeroot dpkg-deb -b ./deb/ .
