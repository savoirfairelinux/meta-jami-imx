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
}
