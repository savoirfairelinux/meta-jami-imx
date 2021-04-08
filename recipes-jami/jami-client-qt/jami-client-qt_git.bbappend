FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://jami-client.service \
	file://0001-disable-libx11-dependency.patch \
	"

inherit useradd

USERADD_PACKAGES= "${PN}"
USERADD_PARAM_${PN} = " \
        --groups input,video,audio \
        --user-group \
        --create-home \
        -c 'Jami user' \
        jami \
        "

do_install_append() {
        #remove gnome client
        rm ${D}/usr/bin/jami

        install -d ${D}${systemd_unitdir}/system
        install -m 644 ${WORKDIR}/jami-client.service \
                ${D}/${systemd_unitdir}/system/
}

FILES_${PN}_append += " ${systemd_unitdir}/system/jami-client.service"

SYSTEMD_SERVICE_${PN} = "jami-client.service"
