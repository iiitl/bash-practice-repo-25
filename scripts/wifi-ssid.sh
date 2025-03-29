#!/usr/bin/env bash

# Extract the wifi username (SSID)
# Refer: "iw dev wlan0 link" command output for this

SSID=$(cmd.exe /c "netsh wlan show interfaces" | grep "SSID" | awk -F: '{print $2}' | xargs)

echo "Currently connected Wi-Fi SSID: $SSID"