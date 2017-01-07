#!/bin/sh
############################################################################
##
## Copyright (C) 2016-2017 Spiri ApS
##
############################################################################

while test -n "$1"; do
  case "$1" in
    "--help" | "-h")
      echo "Usage: . $0 [build directory]"
      return 0
      ;;
    *)
      BUILDDIRECTORY=$1
    ;;
  esac
  shift
done

THIS_SCRIPT="setup.sh"
if [ "$(basename -- $0)" = "${THIS_SCRIPT}" ]; then
    echo "Error: This script needs to be sourced. Please run as '. $0'"
    exit 1
fi

if [ -z "$MACHINE" ]; then
  echo "Error: MACHINE environment variable not defined"
  return 1
fi

if [ -f ${PWD}/${BUILDDIRECTORY}/conf/bblayers.conf ]; then
  echo "" >> ${PWD}/${BUILDDIRECTORY}/conf/bblayers.conf
  echo "BBLAYERS += \" \\" >> ${PWD}/${BUILDDIRECTORY}/conf/bblayers.conf
  echo "  \${BSPDIR}/sources/meta-spiri \\" >> ${PWD}/${BUILDDIRECTORY}/conf/bblayers.conf
  echo "  \"" >> ${PWD}/${BUILDDIRECTORY}/conf/bblayers.conf
  echo "" >> ${PWD}/${BUILDDIRECTORY}/conf/bblayers.conf
else
  echo "Error: Could not find bblayers.conf in build directory"
fi

if [ -f ${PWD}/${BUILDDIRECTORY}/conf/local.conf ]; then
  echo "" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "#" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "# Spiri specific configuration" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "#" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "DISTRO_FEATURES_append = \" 3g\"" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "IMAGE_FSTYPES_remove = \"sdcard\"" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "IMAGE_FSTYPES_append = \" tar.gz\"" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
  echo "" >> ${PWD}/${BUILDDIRECTORY}/conf/local.conf
else
  echo "Error: Could not find local.conf in build directory"
fi

cd "${PWD}/${BUILDDIRECTORY}"

echo "The build environment has been configured for the Spiri distribution."
echo ""
echo "You can build the Spiri Linux image by typing 'bitbake spiri-image' and"
echo "the Spiri SDK by typing 'bitbake spiri-sdk'"
echo ""
unset BUILDDIRECTORY

