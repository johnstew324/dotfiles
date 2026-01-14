#!/bin/bash

if ! command -v powerprofilesctl &> /dev/null; then
    notify-send "Power Profiles" "power-profiles-daemon not installed" -t 2000
    exit 1
fi

current=$(powerprofilesctl get)

case "$current" in
    "power-saver")
        powerprofilesctl set balanced
        notify-send "Power Profile" "Balanced" -t 2000
        ;;
    "balanced")
        powerprofilesctl set performance
        notify-send "Power Profile" "Performance" -t 2000
        ;;
    "performance")
        powerprofilesctl set power-saver
        notify-send "Power Profile" "Power Saver" -t 2000
        ;;
esac