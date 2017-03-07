HOMEPAGE = "http://www.spiri.io"
SUMMARY  = "PubNub handler library"
DESCRIPTION = "Library for handling PubNub channels"
SECTION = "libs"
LICENSE  = "CLOSED"

DEPENDS += "qtbase"

SRCBRANCH = "anvil"
SRCREV = "73d3917cbccbe20779388cacd9da230ae19dafcc"
SRC_URI = "git://git@bitbucket.org/spiri_io/cm-pubnubhandler.git;protocol=ssh;branch=${SRCBRANCH}"

S = "${WORKDIR}/git"

inherit qmake5

do_install_append() {
    if ls ${D}${libdir}/pkgconfig/pubnubhandler.pc >/dev/null 2>/dev/null; then
        sed -i "s@-L${STAGING_LIBDIR}@-L\${libdir}@g" ${D}${libdir}/pkgconfig/pubnubhandler.pc
    fi
}

FILES_${PN}-dev += " \
    ${datadir}/qt5/mkspecs \
    ${libdir}/libpubnubhandler.prl \
"
