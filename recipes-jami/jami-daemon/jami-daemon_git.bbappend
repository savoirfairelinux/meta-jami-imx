FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
        file://jamid \
        "

SRC_URI:append:use-nxp-bsp = " \
        file://0001-media-decoder_finder.h-use-h264_imxvpuapi-to-decode-.patch \
        file://0002-media-media_encoder.cpp-use-h264_imxvpuapi-to-encode.patch \
        file://0003-media-media_encoder.cpp-fix-wrong-encoder-output-pix.patch \
        file://0004-media-media_encoder.cpp-disable-wrong-pixels-format-.patch \
        file://0005-media-fill-decoderctx-after-send-packet.patch \
        file://mxc.rules \
	file://galcore.rules \
        "

do_install:append() {
        install -d ${D}${sysconfdir}/default
        install -m 0644 ${WORKDIR}/jamid ${D}${sysconfdir}/default/
}

do_install:append:use-nxp-bsp() {
        install -d ${D}${sysconfdir}/udev/rules.d
        install -m 0644 ${WORKDIR}/mxc.rules ${D}${sysconfdir}/udev/rules.d/
	install -m 0644 ${WORKDIR}/galcore.rules ${D}${sysconfdir}/udev/rules.d/
}

FILES:${PN} += " \
        ${sysconfdir}/default/jamid \
        "

FILES:${PN}:append:use-nxp-bsp = " \
        ${sysconfdir}/udev/rules.d/mxc.rules \
	${sysconfdir}/udev/rules.d/galcore.rules \
        "
