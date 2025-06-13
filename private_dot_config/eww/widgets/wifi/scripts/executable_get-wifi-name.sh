#!/bin/bash

# Get the active connection's SSID
SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
echo $SSID

