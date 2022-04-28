SRC_URI:use-nxp-bsp = "git://github.com/savoirfairelinux/FFmpeg.git;branch=sfl/master;protocol=https"
SRCREV:use-nxp-bsp = "${AUTOREV}"
PV:use-nxp-bsp .= "+git${SRCPV}"

S:use-nxp-bsp = "${WORKDIR}/git"

DEPENDS:append:use-nxp-bsp = " libimxvpuapi2"

PACKAGECONFIG[imxvpuapi] = "--enable-imxvpuapi --enable-imxdmabuffer"

PACKAGECONFIG[mjpeg] = "--enable-decoder=mjpeg,--disable-decoder=mjpeg"

PACKAGECONFIG[static] = "--enable-static --disable-shared"

PACKAGECONFIG:append:pn-ffmpeg:use-nxp-bsp = " imxvpuapi"
PACKAGECONFIG:remove:pn-ffmpeg:use-nxp-bsp = "mjpeg"

PACKAGECONFIG:remove = "shared"
PACKAGECONFIG:append = " static"
