#!/bin/bash

set -e

pushd /tmp

# Sets up Base Portage
# Shamelessly stolen from gentoo/portage
if [ ! -f /tmp/portage-latest.tar.bz2 ]; then
    wget http://distfiles.gentoo.org/snapshots/portage-latest.tar.bz2
fi
mkdir -p /usr
bzcat /tmp/portage-latest.tar.bz2 | tar -xf - -C /usr
mkdir -p /usr/portage/distfiles /usr/portage/metadata /usr/portage/packages

popd
