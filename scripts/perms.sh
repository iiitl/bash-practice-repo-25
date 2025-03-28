#!/usr/bin/env bash

# TODO: Make it print out permissions of the given files in octal format
#
# E.g.:
# $ perms weather ../README.md
# 775 weather
# 664 ../README.md
for file in "$@"; do
        if [[ -e "$file" ]]; then
            perms=$(stat -c "%a" "$file")
            echo "$perms $file"
        else
            echo "File not found: $file" >&2
        fi
    done

