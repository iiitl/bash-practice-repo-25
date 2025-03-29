#!/bin/bash


SSID=$(iw dev wlan0 link | grep "SSID" | awk '{print $2}')


if [ -z "$SSID" ]; then
    echo "Not connected to any WiFi network"
else
    echo "Connected to WiFi: $SSID"
fi
