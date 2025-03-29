 #!/usr/bin/env bash
color() {
    echo -ne "\033[1;${color_codes[$1]}m"  
}
reset() {
    echo -ne "\033[0m"  
}
declare -A color_codes=(
    ["black"]=30
    ["red"]=31
    ["yellow"]=33
    ["blue"]=34
    ["magenta"]=35
   
)
if [[ -z "$1" ]]; then
    echo "Usage: $0 <color-name>"
    echo "Available colors: ${!color_codes[@]}"
    exit 1
fi
if [[ "$1" == "reset" ]]; then
    reset
else
    if [[ -n "${color_codes[$1]}" ]]; then
        color "$1"
    else
        echo "Invalid color! Choose from: ${!color_codes[@]}"
        exit 1
    fi
fi
