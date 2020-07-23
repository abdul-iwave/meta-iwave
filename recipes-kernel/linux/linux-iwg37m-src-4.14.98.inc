LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

SRCBRANCH = "iwg37m-R1.0-REL0.1"
LOCALVERSION = "-2.3.1"
KERNEL_SRC ?= "git://github.com/abdul-iwave/linux-imx.git;protocol=https"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "a12f9c89c546ec0cb0f0cd11cbd46c148fd812bf"

S = "${WORKDIR}/git"
