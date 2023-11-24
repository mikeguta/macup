#!/bin/bash

. $(pwd)/helpers/print.sh

install_xcode_clt() {
    if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
        test -d "${xpath}" && test -x "${xpath}" ; then
        print_success "Xcode already installed."
        else
        xcode-select --install
        print_success "Please install xcode and re-run MacUp!"
        exit 1
    fi
}
