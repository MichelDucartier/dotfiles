#!/bin/bash
connected=0
for mac in $(bluetoothctl devices | awk '{print $2}'); do
    if bluetoothctl info "$mac" | grep -q "Connected: yes"; then
        ((connected++))
    fi
done
echo "$connected"

