############################################################################
##
## Copyright (C) 2016 Spiri ApS
##
############################################################################

DESCRIPTION = "Spiri SDK toolchain"

LICENSE = "The-Qt-Company-DCLA-2.1"
LIC_FILES_CHKSUM = "file://${QT_LICENSE};md5=80e06902b5f0e94ad0a78ee4f7fcb74b"

inherit populate_b2qt_qt5_sdk

TOOLCHAIN_HOST_TASK += "nativesdk-packagegroup-b2qt-embedded-qt5-toolchain-host"
TOOLCHAIN_TARGET_TASK += "packagegroup-b2qt-embedded-qt5-toolchain-target"
