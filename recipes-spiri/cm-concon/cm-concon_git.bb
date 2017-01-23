HOMEPAGE = "http://www.spiri.io"
SUMMARY  = "Connectivity Control daemon"
DESCRIPTION = "Daemon for managing connectivity using ofono dbus API"
LICENSE  = "CLOSED"

FILESEXTRAPATHS_append := "${THISDIR}/${PN}"

DEPENDS += "qtbase libqofono"

SRCBRANCH = "anvil"
SRCREV = "f77c9c9011559885734de47c1aeea67b14cc944b"
SRC_URI = " \
    git://git@bitbucket.org/spiri_io/cm-concon.git;protocol=ssh;branch=${SRCBRANCH} \
    file://concon.service \
    "

S = "${WORKDIR}/git"

inherit qmake5 systemd

do_install() {
	install -d ${D}${bindir}
	install -m 0755 ${WORKDIR}/build/concond ${D}${bindir}
	install -d ${D}${systemd_unitdir}/system
	install -m 0644 ${WORKDIR}/concon.service ${D}${systemd_unitdir}/system/
}

FILES_${PN} += " \
    ${bindir}/concond \
    ${systemd_unitdir}/system/ \
"

SYSTEMD_SERVICE_${PN} = "concon.service"

