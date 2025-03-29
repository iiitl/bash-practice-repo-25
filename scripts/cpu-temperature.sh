#!/usr/bin/env bash

temp_millic=$(grep -E 'Tctl|Tdie|Package id' /sys/class/hwmon/hwmon*/temp*_label | head -n1 | sed 's/label/input/' | xargs cat)
temp_c=$(bc <<< "scale=1; $temp_millic / 1000")

temp_f=$(bc <<< "scale=1; ($temp_c * 9/5) + 32")
echo "Celsius: $temp_c °C"
echo "Fahrenheit: $temp_f °F"

