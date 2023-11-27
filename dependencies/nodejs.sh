#!/bin/bash

. $(pwd)/helpers/print.sh

install_nodejs(){
    local dir=$HOME/.nvm/nvm.sh

    if ! [[ -f $dir ]]; then
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
        print_success "NVM installed"

        install_node_version
    else
        print_success "NVM already installed"
    fi
}

install_node_version() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

    print_info "Node: Installing current Long-Term Support Node"
    nvm install --lts
    nvm use --lts
    nvm run node --version
    node_version=$(node -v)

    print_success "Node: ${node_version} installed"
}
