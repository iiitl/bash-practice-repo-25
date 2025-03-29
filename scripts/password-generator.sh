#!/usr/bin/env bash
generate_password() {
    local length=$1
    if [[ -z "$length" || "$length" -le 0 ]]; then
        echo "Error: Please provide a valid password length." >&2
        return 1
    fi
    tr -dc 'A-Za-z0-9!@#$%^&*()_+-=' </dev/urandom | head -c "$length"
    echo  #print newline 
}

read -p "Enter password length: " pass_length
generate_password "$pass_length"
