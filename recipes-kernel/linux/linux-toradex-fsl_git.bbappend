# Place changes to the defconfig here
config_script () {
#    #example change to the .config
#    #sets CONFIG_TEGRA_CAMERA unconditionally to 'y'
#    sed -i -e /CONFIG_TEGRA_CAMERA/d ${B}/.config
#    echo "CONFIG_TEGRA_CAMERA=y" >> ${B}/.config
#    echo "dummy" > /dev/null


#    sed -i -e /CONFIG_USB_ACM/d ${B}/.config
#    echo "CONFIG_USB_ACM=y" >> ${B}/.config
#    sed -i -e /CONFIG_USB_SERIAL_OPTION/d ${B}/.config
#    echo "CONFIG_USB_SERIAL_OPTION=m" >> ${B}/.config
#    sed -i -e /CONFIG_PPP_BSDCOMP/d ${B}/.config
#    echo "CONFIG_PPP_BSDCOMP=m" >> ${B}/.config
#    sed -i -e /CONFIG_PPP_DEFLATE/d ${B}/.config
#    echo "CONFIG_PPP_DEFLATE=m" >> ${B}/.config
#    sed -i -e /CONFIG_PPP_FILTER/d ${B}/.config
#    echo "CONFIG_PPP_FILTER=y" >> ${B}/.config
#    sed -i -e /CONFIG_PPP_MPPE/d ${B}/.config
#    echo "CONFIG_PPP_MPPE=m" >> ${B}/.config
#    sed -i -e /CONFIG_PPP_ASYNC/d ${B}/.config
#    echo "CONFIG_PPP_ASYNC=m" >> ${B}/.config
#    sed -i -e /CONFIG_PPP_SYNC_TTY/d ${B}/.config
#    echo "CONFIG_PPP_SYNC_TTY=m" >> ${B}/.config

    sed -i -e /CONFIG_USB_ACM/d ${B}/.config
    echo "CONFIG_USB_ACM=y" >> ${B}/.config
    sed -i -e /CONFIG_USB_SERIAL_OPTION/d ${B}/.config
    echo "CONFIG_USB_SERIAL_OPTION=y" >> ${B}/.config
    sed -i -e /CONFIG_PPP_BSDCOMP/d ${B}/.config
    echo "CONFIG_PPP_BSDCOMP=y" >> ${B}/.config
    sed -i -e /CONFIG_PPP_DEFLATE/d ${B}/.config
    echo "CONFIG_PPP_DEFLATE=y" >> ${B}/.config
    sed -i -e /CONFIG_PPP_FILTER/d ${B}/.config
    echo "CONFIG_PPP_FILTER=y" >> ${B}/.config
    sed -i -e /CONFIG_PPP_MPPE/d ${B}/.config
    echo "CONFIG_PPP_MPPE=y" >> ${B}/.config
    sed -i -e /CONFIG_PPP_ASYNC/d ${B}/.config
    echo "CONFIG_PPP_ASYNC=y" >> ${B}/.config
    sed -i -e /CONFIG_PPP_SYNC_TTY/d ${B}/.config
    echo "CONFIG_PPP_SYNC_TTY=y" >> ${B}/.config
    sed -i -e /CONFIG_TUN/d ${B}/.config
    echo "CONFIG_TUN=y" >> ${B}/.config
}

