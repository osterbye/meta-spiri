############################################################################
##
## Copyright (C) 2016-2017 Spiri ApS
##
############################################################################

DESCRIPTION = "Spiri image for Central Communication Unit"
#LICENSE = "The-Qt-Company-DCLA-2.1"
#LIC_FILES_CHKSUM = "file://${QT_LICENSE};md5=80e06902b5f0e94ad0a78ee4f7fcb74b"
PR = "r0"

DEPLOY_CONF_TYPE = "Boot2Qt"

IMAGE_FEATURES += "\
        package-management \
        ssh-server-dropbear \
        tools-debug \
        debug-tweaks \
        hwcodecs \
        "

inherit core-image
inherit bootfs-image
inherit consistent_timestamps

MACHINE_EXTRA_INSTALL_SPIRI ?= "\
    protobuf \
    mobile-broadband-provider-info \
    libconnman-qt5 \
    libqofono \
    cm-concon \
    cm-release \
    "

MACHINE_EXTRA_INSTALL_QT ?= ""

IMAGE_INSTALL += "\
    ${MACHINE_EXTRA_INSTALL_QT} \
    packagegroup-b2qt-embedded-base \
    packagegroup-b2qt-embedded-tools \
    ${@base_contains("DISTRO_FEATURES", "gstreamer010", "packagegroup-b2qt-embedded-gstreamer010", "", d)} \
    ${@base_contains("DISTRO_FEATURES", "gstreamer", "packagegroup-b2qt-embedded-gstreamer", "", d)} \
    packagegroup-b2qt-qt5-modules \
    packagegroup-b2qt-embedded-addons \
    ${MACHINE_EXTRA_INSTALL_SPIRI} \
    "
