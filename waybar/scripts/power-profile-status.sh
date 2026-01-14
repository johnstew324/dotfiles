#!/bin/bash

# Check if power-profiles-daemon is available
if ! command -v powerprofilesctl &> /dev/null; then
    exit 0
fi

profile=$(powerprofilesctl get 2>/dev/null)

case "$profile" in
    "performance")
        echo "󰓅"  # lightning - performance
        ;;
    "balanced")
        echo "󰾅"  # scales - balanced
        ;;
    "power-saver")
        echo "󰂎"  # battery - power saver
        ;;
    *)
        echo "󰚥"  # plug - unknown
        ;;
esac