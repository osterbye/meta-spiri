# Make changes to kernel .config
do_configure_append () {
    sed -i -e /CONFIG_TUN/d ${B}/.config
    echo "CONFIG_TUN=y" >> ${B}/.config
}
