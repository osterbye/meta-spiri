FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/${MACHINE}:"
SRC_URI += " \
        file://flash_ostree_blk.scr \
        file://fwd_ostree_blk.scr \
        "

do_deploy_append () {
    ln -s ../flash_ostree_blk.img ${DEPLOYDIR}/${MACHINE}/
}
