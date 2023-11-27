#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/dependencies/brew.sh

# this module is optional

install_communication_apps(){
    if is_app_installed "Slack"; then
        local slack_is_installed=true
    fi
    if is_app_installed "zoom" || is_app_installed "zoom.us"; then
        local zoom_is_installed=true
    fi
    # This could be called either "Microsoft Teams", "Microsoft Teams classic" or "Microsoft Teams (work or school)"
    if is_app_installed "Microsoft Teams.*"; then
        local teams_is_installed=true
    fi

    if [ $slack_is_installed ] && [ $zoom_is_installed ] && [ $teams_is_installed ]; then
        print_info "Comms: all tools are already installed ..."
        return 0;
    fi

    if ask "Would you like to install comm tools Slack / Teams / Zoom?" Y; then
        if [ ! $slack_is_installed ]; then
            install_cask "slack"
        fi
        if [ ! $zoom_is_installed ]; then
            install_cask "zoom"
        fi
        if [ ! $teams_is_installed ]; then
            install_cask "microsoft-teams"
        fi
        print_success "Communication: slack, teams, zoom"

    else
        print_info "No comms tools chosen"
    fi
}
