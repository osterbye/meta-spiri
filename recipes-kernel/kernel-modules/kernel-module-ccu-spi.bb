# Copyright (C) 2016 Spiri ApS
SUMMARY = "SPI communication kernel module for Spiri CCU"
LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86cbc76b146a7058c0664284603c9033"

PROVIDES = "virtual/kernel-module-ccu-spi"
RPROVIDES_${PN} = "virtual/kernel-module-ccu-spi"
RPROVIDES_${PN}-dev = "virtual/kernel-module-ccu-spi-dev"

inherit module

SRC_URI = "git://git@bitbucket.org/spiri_io/ccu-spi.git;protocol=ssh;branch=${SRCBRANCH}"

SRCBRANCH = "anvil"
SRCREV = "2e4f2ceaf97cd0009d89937ca04d2174be7b7e02"

S = "${WORKDIR}/git"

COMPATIBLE_MACHINE = "(apalis-imx6)"
