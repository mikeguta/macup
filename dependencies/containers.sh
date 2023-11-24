#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/dependencies/brew.sh

# this module is optional

install_containers(){
    if ask "Would you like to install container support (docker + colima)?" Y; then
        install_brew docker
        install_brew colima
        # Make colima start at login
        brew services start colima

        print_info "TODO: Loging to Docker Hub (see https://hub.docker.com/settings/security)"
        print_success "Containers: docker, colima"

        if ask "Would you like to install Podman Desktop (Container GUI)?" Y; then
            install_cask podman-desktop
            print_success "Containers: Podman Desktop"
        fi

    else
        print_info "No container support chosen"
    fi
}
