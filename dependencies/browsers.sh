#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/dependencies/brew.sh
. $(pwd)/helpers/app.sh

# this module is optional

install_browsers(){
    if is_app_installed "Google Chrome"; then
        local chrome_installed=true
    fi
    if is_app_installed "Firefox"; then
        local firefox_installed=true
    fi

    if [ $chrome_installed ] && [ $firefox_installed ]; then
        print_info "Chrome and Firefox browsers already installed ..."
        return 0;
    fi

    if ask "Would you like to install browsers (chrome + firefox)?" Y; then
        if [ ! $chrome_installed ]; then
            install_cask "google-chrome"
        fi
        if [ ! $firefox_installed ]; then
            install_cask "firefox"
        fi
        print_success "Browsers: Chrome, Firefox"
    else
        print_info "No browsers will be installed"
    fi
}
