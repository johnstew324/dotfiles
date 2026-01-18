#!/bin/bash
# Toggle Bluetooth on/off

status=$(bluetoothctl show | grep "Powered: yes")

if [ -n "$status" ]; then
    # Bluetooth is on, turn it off
    bluetoothctl power off
else
    # Bluetooth is off, turn it on
    bluetoothctl power on
fi