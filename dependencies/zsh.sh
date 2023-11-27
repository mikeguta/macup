#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/create_backup.sh
. $(pwd)/helpers/print.sh

install_zsh () {
    local dir=$HOME/.oh-my-zsh

    if ! [[ -d $dir ]]; then
        # Disable running ZSH after installation
        RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        print_success "Oh my Zsh installed"
    else
        print_success "Oh my Zsh already installed."
    fi
}

configure_zsh () {

    local zsh_config=$HOME/.zshrc
    local p10k_config=$HOME/.p10k.zsh
    local source_zsh_config=$1
    local source_p10k_config=$2

    if [ -f "$zsh_config" ]; then
        create_backup "zsh" "zshrc" "$zsh_config"
    fi
    
    if [ -f "$p10k_config" ]; then
        create_backup "zsh" "p10k.zsh" "$p10k_config"
    fi

    cp "$source_zsh_config" "$zsh_config"
    cp "$source_p10k_config" "$p10k_config"
    print_success "Configured ZSH: $zsh_config, $p10k_config"
}

