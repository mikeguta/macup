#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/helpers/admin_access.sh
. $(pwd)/utils/styles.sh

prompt() {
    if ask "MacUp will configure this machine and requires Admin access. Are you sure?" Y; then
        # Override for development
        if ! [ "${MACUP_ENV}" = "development" ]; then
            admin_access
        fi

        else
        print_error "MacUp requires 'Admin Access' to be granted; Exiting now. \n"
        exit 0
    fi;

}
