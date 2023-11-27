#!/bin/bash

. $(pwd)/helpers/print.sh

#
# Creates backup files
# usage: create_backup "git" "gitignore" "~/.gitigonre"
#

create_backup() {
    local name_space=$1
    local file_name=$2
    local file_path=$3

    local timestamp=$(date +%s)
    local backup_file="${timestamp}.${file_name}.bp"
    local backup_file_path=$(pwd)/.backups/${name_space}/${backup_file}

    if [[ -f $file_path ]]; then
        print_info "Creating backup: ${file_path}"
        mkdir -p $(pwd)/.backups/${name_space}
        cp "${file_path}" "${backup_file_path}"
    else
        print_info "File ${file_path} does not exist, skipped backup"
    fi

    if [[ -f $backup_file_path ]]; then
        print_info "Backup created: ${backup_file_path}"
    fi
}
