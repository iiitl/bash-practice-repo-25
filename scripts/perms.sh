#!/usr/bin/env bash

# TODO: Make it print out permissions of the given files in octal format
#
# E.g.:
# $ perms weather ../README.md
# 775 weather
# 664 ../README.md

#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <file1> <file2> ..."
    exit 1
fi

for file in "$@"; do
    if [ -e "$file" ]; then
        perms=$(stat -c "%a" "$file")
        echo "$perms $file"
    else
        echo "File '$file' doesn't exist."
    fi
done