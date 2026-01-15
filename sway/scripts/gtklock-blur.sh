#!/bin/bash
# Take screenshot, blur it, lock with it as background
grim /tmp/lockscreen.png
convert /tmp/lockscreen.png -blur 0x8 /tmp/lockscreen_blur.png
gtklock -d -b /tmp/lockscreen_blur.png -s ~/dotfiles/gtklock/style.css