#BASEFILESISSUEINSTALL = "do_install_basefilesissue"

DISTRO_NAME = "NXP i.MX Release "
DISTRO_VERSION = "L4.14.98-2.3.1"

G37_BSP_VERSION = "\r Rootfs Version : iW-PRGJZ-SC-01-R1.0-REL1.0-YoctoSumo\n"
G37_HOST = "iWave-G37M"

do_install_basefilesissue () {
	if [ "${hostname}" ]; then
		echo ${hostname} > ${D}${sysconfdir}/hostname
	fi

	install -m 644 ${WORKDIR}/issue*  ${D}${sysconfdir}
	if [ -n "${G37_BSP_VERSION}" ]; then
               printf "${G37_BSP_VERSION} " >> ${D}${sysconfdir}/issue
               printf "${G37_BSP_VERSION} " >> ${D}${sysconfdir}/issue.net
        fi
        if [ -n "${G37_HOST}" ]; then
               echo ${G37_HOST} > ${D}${sysconfdir}/hostname
        fi

        if [ -n "${DISTRO_NAME}" ]; then
		printf "${DISTRO_NAME} " >> ${D}${sysconfdir}/issue
		printf "${DISTRO_NAME} " >> ${D}${sysconfdir}/issue.net
		if [ -n "${DISTRO_VERSION}" ]; then
			distro_version_nodate=${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot').replace('${DATE}','')}
			printf "%s " $distro_version_nodate >> ${D}${sysconfdir}/issue
			printf "%s " $distro_version_nodate >> ${D}${sysconfdir}/issue.net
		fi
		printf "\\\n \\\l\n" >> ${D}${sysconfdir}/issue
		echo >> ${D}${sysconfdir}/issue
		echo "%h"    >> ${D}${sysconfdir}/issue.net
		echo >> ${D}${sysconfdir}/issue.net
 	fi
}
#do_install_basefilesissue_iw[vardepsexclude] += "DATE"
