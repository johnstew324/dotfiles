#!/bin/bash

if pgrep -x wlsunset > /dev/null; then
    killall wlsunset
    notify-send "Night Light" "Disabled" -t 2000
else
    wlsunset -l 53.3 -L -6.3 &
    notify-send "Night Light" "Enabled (Auto)" -t 2000
fi


pkill -RTMIN+8 waybar