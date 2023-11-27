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
    # By default, ZSH doesn't enable any plugins
    # We want to initialize it to a good set of plugins
    local zsh_config=$HOME/.zshrc
    local default_plugins="git docker docker-compose node npm zsh-syntax-highlighting zsh-completions"

    if [ ! -f "$zsh_config" ]; then
        touch "$zsh_config"
    fi
    
    # Plugins are already defined, ask for overwrite
    if grep -q "^plugins=(" "$zsh_config"; then
        if ask "Would you like to overwrite plugins in your $zsh_config file?" Y; then
            overwrite_zsh_plugins "$zsh_config" "$default_plugins"
            print_success "ZSH: Plugins set to $default_plugins"
        fi
    # Plugins are already defined, ask for overwrite
    elif grep -q "^export ZSH=" "$zsh_config"; then
        append_zsh_plugins "$zsh_config" "$default_plugins"
        print_success "ZSH: Plugins set to $default_plugins"
    else
        print_error "ZSH: Plugin configuration failed, please add it manually"
    fi
}

overwrite_zsh_plugins() {
    # SED is limited to line-by-line operations
    # To easily get around it, we replace \n with \r and then reverse the operation
    cat "$1" | \
    tr '\n' '\r' | \
    sed -E "s/\rplugins=\([^\)]*\)/plugins=($2)/g" | \
    tr '\r' '\n' > "$1"
}

append_zsh_plugins() {
    # Use the SED Append command to add the plugins after the line with "export ZSH="
    cat "$1" | \
    sed -E "/^export ZSH=.+$/a\ plugins=($2)/g" > "$1"
}

