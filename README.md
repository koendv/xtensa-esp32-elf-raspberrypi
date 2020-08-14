# xtensa-esp32-elf-raspberrypi
This is the esp32/esp32s2 gcc cross-compiler toolchain, version 2020r2, compiled for 64-bit raspberry pi os, and packaged as a debian .deb archive.

Install with ``sudo apt install ./xtensa-esp32-elf_8.2.0-2020r2_arm64.deb``

Remove with ``sudo apt remove xtensa-esp32-elf``

Files are installed in /opt.

## Notes

This package is for 64-bit raspberry only.

Build script: [build.sh](build.sh). Uses [crosstool-ng](http://crosstool-ng.github.io/docs/).

Packaging script: [pkg.sh](pkg.sh)

See expressif doc: [Setup linux toolchain from scratch](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-setup-scratch.html)


