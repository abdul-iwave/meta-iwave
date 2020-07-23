SRCBRANCH = "iwg37m-R1.0-REL0.1"
OPTEE_OS_SRC = "git://github.com/abdul-iwave/imx-optee-os.git;protocol=https"
SRC_URI = "${OPTEE_OS_SRC};branch=${SRCBRANCH}"
SRCREV = "00bae4985e28e1b5dc0237a6dd565d890e68f31a" 

PLATFORM_FLAVOR_mx8mn           = "mx8mn_iwg37m"
