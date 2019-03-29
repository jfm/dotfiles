#!/bin/bash

swaymsg output DP-5 disable
swaymsg output eDP-1 enable
swaymsg output eDP-1 pos 0 0 res 2560 1440
swaymsg output eDP-1 background ~/.config/sway/wallpapers/space_2560x1440.jpg fill

killall waybar
waybar -c ~/.config/waybar/laptop-config &

exit 0
