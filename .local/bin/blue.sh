#!/bin/bash
get_device_list() {
    bluetoothctl devices | awk -F ' ' '{print $3 " " $2}'
}
# Display devices using dmenu and get the selected device name
device_list=$(get_device_list)
selected_device=$(echo "$device_list" | dmenu -l 10 | awk '{print $1}')
if [ -z "$selected_device" ]; then
    echo "No device selected."
    exit 1
fi
# Get the MAC address of the selected device
MAC=$(echo "$device_list" | grep "$selected_device" | awk '{print $2}')
if [ -z "$MAC" ]; then
    echo "Failed to find MAC address for selected device."
    exit 1
fi
# Check the connection status of the selected device
connect=$(bluetoothctl info "$MAC" | grep Connected: | awk '{print $2}')
# Attempt to connect or disconnect based on the connection status
if [ "$connect" = "no" ]; then
    echo "Attempting to connect to $selected_device..."
    if bluetoothctl connect "$MAC"; then
        echo "Successfully connected to $selected_device"
    else
        echo "Failed to connect to $selected_device"
    fi
elif [ "$connect" = "yes" ]; then
    echo "Attempting to disconnect from $selected_device..."
    if bluetoothctl disconnect "$MAC"; then
       echo "Successfully disconnected from $selected_device"
    else
       echo "Failed to disconnect from $selected_device"
    fi
else
     echo "Unable to determine connection status for $selected_device."
    exit 1
fi
