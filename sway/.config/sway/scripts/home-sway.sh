#!/bin/bash

swaymsg output DP-5 enable
swaymsg output eDP-1 disable
swaymsg output DP-5 pos 0 0 res 3440 1440
swaymsg output DP-5 background ~/.config/sway/wallpapers/space_ultrawide.jpg fill

killall waybar
waybar -c ~/.config/waybar/home-config &

exit 0
