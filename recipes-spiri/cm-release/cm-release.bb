SUMMARY = "Copy release description in JSON format to deployment folder"
LICENSE = "CLOSED"

SRC_URI = "file://spiri-release.json"

S = "${WORKDIR}"

FILES_${PN} = ""
ALLOW_EMPTY_${PN} = "1"

inherit deploy

do_deploy () {
    install -m 0644 -t ${DEPLOYDIR} ${S}/spiri-release.json
}

addtask deploy after do_install before do_build

do_compile[noexec] = "1"
do_install[noexec] = "1"
do_populate_sysroot[noexec] = "1"

