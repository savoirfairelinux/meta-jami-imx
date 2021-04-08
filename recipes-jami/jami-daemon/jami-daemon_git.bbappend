FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
        file://jami-dbus.service \
        file://jami-daemon.service \
        file://dring \
        "

SRC_URI_append_use-nxp-bsp = " \
        file://0001-media-decoder_finder.h-use-h264_imxvpuapi-to-decode-.patch \
        file://0002-media-media_encoder.cpp-use-h264_imxvpuapi-to-encode.patch \
        "

do_install_append() {
        install -d ${D}${systemd_unitdir}/system
        install -m 644 ${WORKDIR}/jami-dbus.service ${D}/${systemd_unitdir}/system/
        install -m 644 ${WORKDIR}/jami-daemon.service ${D}/${systemd_unitdir}/system/
        install -d ${D}${sysconfdir}/default
        install -m 0644 ${WORKDIR}/dring ${D}${sysconfdir}/default/
}

FILES_${PN} += " \
        ${systemd_unitdir}/system/jami-dbus.service \
        ${systemd_unitdir}/system/jami-daemon.service \
        ${sysconfdir}/default/dring \
        "

SYSTEMD_SERVICE_${PN} = " \
        jami-dbus.service \
        jami-daemon.service \
        "
