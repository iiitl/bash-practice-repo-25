#!/usr/bin/env bash

# Extract the wifi username (SSID)
# Refer: "iw dev wlan0 link" command output for this
SSID=$(netsh wlan show interfaces | grep "SSID" | awk -F: '{print $2}' | sed 's/^[ \t]*//')
echo "Connected WiFi SSID: $SSID"