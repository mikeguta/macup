#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/create_backup.sh
. $(pwd)/helpers/print.sh

#
# GIT_USERNAME and GIT_EMAIL can be declared in env
#
configure_git_user() {

    # If there is an existing username, we read that
    if [ -z "${GIT_USERNAME}" ]; then
        GIT_USERNAME=$(git config --global --get user.name)
    fi
    if [ -z "${GIT_EMAIL}" ]; then
        GIT_EMAIL=$(git config --global --get user.email)
    fi
    
    if [ -z "${GIT_USERNAME}" ]; then
        print_question "Git username"
        read GIT_USERNAME
    fi
    export GIT_USERNAME

    if [ -z "${GIT_EMAIL}" ]; then
        print_question "Git email"
        read GIT_EMAIL
    fi
    export GIT_EMAIL

    print_info "username: ${GIT_USERNAME}"
    git config --global user.name $GIT_USERNAME

    print_info "email: ${GIT_EMAIL}"
    git config --global user.email $GIT_EMAIL

    print_success "Git: user, email set"
}


configure_git_colors() {
    git config --global "color.ui" "auto"
    git config --global "color.branch.current" "yellow bold"
    git config --global "color.branch.local" "green bold"
    git config --global "color.branch.remote" "cyan bold"
    git config --global "color.diff.meta" "yellow bold"
    git config --global "color.diff.frag" "magenta bold"
    git config --global "color.diff.old" "red bold"
    git config --global "color.diff.new" "green bold"
    git config --global "color.diff.whitespace" "red reverse"
    git config --global "color.status.added" "green bold"
    git config --global "color.status.changed" "yellow bold"
    git config --global "color.status.untracked" "red bold"

    print_success "Git: colors configured"
}

configure_git(){
    if ask "Would you like to configure git?" Y; then
        configure_git_colors
        configure_git_user
    else
        print_error "Aborting..."
    fi
}
