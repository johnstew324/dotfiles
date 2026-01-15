#!/bin/bash

# Check if wlsunset is running
if ! pgrep -x wlsunset > /dev/null; then
    echo "󰚵"  # disabled/crossed out icon
    exit 0
fi

# Get current hour
hour=$(date +%H)

# Determine icon based on time of day
if [ $hour -ge 6 ] && [ $hour -lt 12 ]; then
    echo ""  # sunrise/morning (6am-12pm)
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
    echo ""  # sun/day (12pm-6pm)
elif [ $hour -ge 18 ] && [ $hour -lt 21 ]; then
    echo ""  # sunset/evening (6pm-9pm)
else
    echo ""  # moon/night (9pm-6am)
fi