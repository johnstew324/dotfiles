#!/bin/bash

# Get list of sinks with friendly names
sinks=$(pactl list sinks | grep -E "Name:|Description:" | paste -d " " - - | sed 's/Name: //; s/Description: //')

# Use fuzzel to select (you already have this!)
selected=$(echo "$sinks" | fuzzel --dmenu -p "Audio Output: ")

# Extract sink name and set as default
if [ -n "$selected" ]; then
    sink_name=$(echo "$selected" | awk '{print $1}')
    pactl set-default-sink "$sink_name"
fi