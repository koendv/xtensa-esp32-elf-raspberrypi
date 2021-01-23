#!/bin/bash
git clone https://github.com/igrr/mkspiffs/ --recursive
cd mkspiffs/
patch -p0 << EOD
--- Makefile.ORIG	2021-01-23 12:52:22.797372560 +0100
+++ Makefile	2021-01-23 12:52:44.873080887 +0100
@@ -15,6 +15,9 @@
 		ifeq (\$(UNAME_M),armv6l)
 			TARGET_OS := linux-armhf
 		endif
+		ifeq (\$(UNAME_M),aarch64)
+			TARGET_OS := linux-aarch64
+		endif
 	endif
 	ifeq (\$(UNAME_S),Darwin)
 		TARGET_OS := osx
EOD
make
