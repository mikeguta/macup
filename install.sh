#!/bin/sh

#
# This script should be run via:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/mikeguta/macup/master/install.sh)"
#
GITHUB_SHA=${1:-master}

echo "\n MacUp Github SHA: ${GITHUB_SHA} \n"

mkdir -p ~/.macup; cd ~/.macup; \
curl -L "https://github.com/mikeguta/macup/tarball/${GITHUB_SHA}" | tar -xzv --strip-components 1 &> /dev/null; \
sh bootstrap.sh
