#!/usr/bin/env bash

color() {
    echo -ne "\033[$1m"
}

declare -A color_mapping=(
    ['black']=30
    ['red']=31
    ['green']=32
    ['yellow']=33
    ['blue']=34
    ['magenta']=35
    ['cyan']=36
    ['white']=37
    ['reset']=0
)

if [[ -n "${color_mapping[$1]}" ]]; then
    color "${color_mapping[$1]}"
else
    echo "Unknown color: $1"
fi
