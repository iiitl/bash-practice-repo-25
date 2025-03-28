#!/usr/bin/env bash

# TODO: Display weather of IIIT, Lucknow
# For more information see: https://wttr.in/:help

echo "Current weather in IIIT Lucknow:"
curl -s "wttr.in/IIIT+Lucknow?format=4"
echo
echo "Weather forecast:"
curl -s "wttr.in/IIIT+Lucknow?format=3&n&u"