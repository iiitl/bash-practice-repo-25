#!/usr/bin/env bash

color() {
    if [ "$1" == "red" ]; then
        echo -ne "\033[31m"
    elif [ "$1" == "green" ]; then
        echo -ne "\033[32m"
    elif [ "$1" == "yellow" ]; then
        echo -ne "\033[33m"
    elif [ "$1" == "blue" ]; then
        echo -ne "\033[34m"
    elif [ "$1" == "magenta" ]; then
        echo -ne "\033[35m"
    elif [ "$1" == "reset" ]; then
        echo -ne "\033[0m"
    else
        echo "Error: '$1' is not a valid color."
    fi
}
color "$1"
