# xtensa-esp32-elf-raspberrypi
This is the esp32/esp32s2 gcc cross-compiler toolchain, version 2020r2, compiled for 64-bit raspberry pi os, and packaged as a debian .deb archive.

Install with ``sudo apt install ./xtensa-esp32-elf_8.2.0-2020r2_arm64.deb``

Remove with ``sudo apt remove xtensa-esp32-elf``

Files are installed in /opt.

## arduino-esp32 on raspberry pi 64-bit

By itself, the [Arduino IDE](https://www.arduino.cc/en/Main/Software) does not support ESP32 processors. This software for  Raspberry Pi OS "Buster" (64-bit) adds support for ESP32 processors to the Arduino IDE.

Start and exit the Arduino IDE. This creates the directory `~/.arduino15`  in your home directory, and the file `~/.arduino15/preferences.txt`.

With the Arduino IDE **not** running, edit `.arduino15/preferences.txt`, and add the following line:
```
allow_insecure_packages=true
```
This allows the use of unsigned packages like this one. Also tick "Verbose output during upload".

Start  the Arduino IDE. In *File --> Preferences --> Additional Board Manager URLs:* paste the following url:
```
https://github.com/koendv/xtensa-esp32-elf-raspberrypi/blob/master/package_esp32_dev_index.json
```
Press OK.

Open *Tools -> Board: -> Boards Manager*
In the search field, type "ESP32". Install the "esp32" board package. Ignore any messages "Warning: forced trusting untrusted contributions".

In the Tools menu select the ESP32 cores as compilation target. As an example, if using a STM32F103 Blue Pill choose *Tools->Board: -> ESP32 Arduino->ESP32 Wrover Module* .


## Notes

This esp32/esp32s2 gcc cross-compiler is for 64-bit raspberry only.

Build script: [build.sh](build.sh). Uses [crosstool-ng](http://crosstool-ng.github.io/docs/).

Packaging script: [pkg.sh](pkg.sh)

See expressif doc: [Setup linux toolchain from scratch](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-setup-scratch.html)


