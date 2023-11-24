#!/bin/bash

. $(pwd)/helpers/print.sh
. $(pwd)/dependencies/brew.sh

#
# GitHub: https://github.com/romkatv/powerlevel10k
#
install_powerlevel10k () {
    if ! [[ -d $dir ]]; then
        install_brew powerlevel10k
        echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
        print_success "PowerLevel10k installed"
    else
        print_success "PowerLevel10k already installed."
    fi
}
