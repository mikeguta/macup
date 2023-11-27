#!/bin/bash

. $(pwd)/utils/version.sh
. $(pwd)/utils/styles.sh

logo() {
logo_file_content=`cat $(pwd)/utils/logo.txt`

printf "
${color_yellow}
$logo_file_content

Version: ${UP_VERSION}
${font_reset}
"
}

