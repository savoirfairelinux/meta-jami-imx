# for backend framebuffer, rename LibGL- accordingly and create symbolic links.
do_install_append () {
    if [ "${backend}" = "fb" ]; then
        mv  ${D}${libdir}/libGL-.so ${D}${libdir}/libGL.so.1.2.0
        ln -sf libGL.so.1.2.0 ${D}${libdir}/libGL.so.1.2
        ln -sf libGL.so.1.2.0 ${D}${libdir}/libGL.so.1
        ln -sf libGL.so.1.2.0 ${D}${libdir}/libGL.so
    fi
}
