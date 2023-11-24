#!/bin/bash

. $(pwd)/helpers/print.sh

is_app_installed() {
    if [ -z "${1}" ]; then
        print_error "Application name was not specified."
        exit 2;
    fi

    local app_name="$1.app"
    mdfind -onlyin /Applications "kMDItemKind == 'Application'" | grep -i "/$app_name$" > /dev/null
}