SRC_URI_use-nxp-bsp = "git://github.com/savoirfairelinux/FFmpeg.git;branch=sfl/master"
SRCREV_use-nxp-bsp = "${AUTOREV}"
PV_use-nxp-bsp .= "+git${SRCPV}"

S_use-nxp-bsp = "${WORKDIR}/git"

DEPENDS_append_use-nxp-bsp = " libimxvpuapi2"

PACKAGECONFIG[imxvpuapi] = "--enable-imxvpuapi"

PACKAGECONFIG[mjpeg] = "--enable-decoder=mjpeg,--disable-decoder=mjpeg"

PACKAGECONFIG_append_pn-ffmpeg_use-nxp-bsp = " imxvpuapi"
PACKAGECONFIG_remove_pn-ffmpeg_use-nxp-bsp = "mjpeg"
