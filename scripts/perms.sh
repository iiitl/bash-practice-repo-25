#!/usr/bin/env bash

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <file1> <file2> ..."
    exit 1
fi

for file in "$@"; do
    if [ -e "$file" ]; then
        perms=$(stat -c "%a" "$file")
        echo "$perms $file"
    else
        echo "Error: $file does not exist" >&2
    fi
done