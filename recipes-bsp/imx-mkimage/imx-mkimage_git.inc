# Copyright 2017-2019 NXP

IMX_MKIMAGE_SRC = "git://github.com/abdul-iwave/imx-mkimage.git;protocol=https"
SRCBRANCH = "iwg37m-R1.0-REL0.1"
SRC_URI = "${IMX_MKIMAGE_SRC};branch=${SRCBRANCH}"
SRCREV = "177fd755a7fc697b7275ebe40bf1726320f17b73"

DEPENDS = "zlib-native openssl-native"
