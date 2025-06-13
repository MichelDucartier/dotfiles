# Get the signal strength as a percentage
connected=0
for mac in $(bluetoothctl devices | awk '{print $2}'); do
    if bluetoothctl info "$mac" | grep -q "Connected: yes"; then
        bluetoothctl info $mac | grep "Name" | cut -d' ' -f 2-
    fi
done
