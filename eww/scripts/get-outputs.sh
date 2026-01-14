#!/bin/bash

default_sink=$(pactl get-default-sink)

pactl list sinks short | while read -r line; do
    sink_id=$(echo "$line" | awk '{print $1}')
    sink_name=$(echo "$line" | awk '{print $2}')
    
    # Get description
    description=$(pactl list sinks | grep -A 20 "Name: $sink_name" | grep "Description:" | sed 's/.*Description: //')
    
    if [ "$sink_name" = "$default_sink" ]; then
        active="active"
        icon="✓"
    else
        active=""
        icon=" "
    fi
    
    printf "(button :class \"output-button %s\" :onclick \"pactl set-default-sink %s && eww update audio-outputs='\\$(~/.config/eww/scripts/get-outputs.sh)'\" \"%s %s\")\n" "$active" "$sink_name" "$icon" "$description"
done