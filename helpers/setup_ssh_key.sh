#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/utils/styles.sh

create_ssh_key() {
    if ask "No SSH key found. Create one?" Y; then
        print_info "Creating ssh-key";
        ssh-keygen -t rsa;
    else
        return 0;
    fi
}

setup_ssh_key() {
    # Override for development
    if [ "${MACUP_ENV}" = "development" ]; then
        return 0;
    fi

    local pub=$HOME/.ssh/id_rsa.pub

    if ! [[ -f $pub ]]; then
        create_ssh_key
    fi
}
