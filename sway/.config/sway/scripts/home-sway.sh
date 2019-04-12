#!/bin/bash

swaymsg output DP-5 enable
swaymsg output DP-4 enable
swaymsg output eDP-1 disable
swaymsg output DP-5 pos 0 0 res 3440 1440
swaymsg output DP-4 pos 3440 0 res 1920 1200
swaymsg output DP-4 transform 270
swaymsg output DP-4 background ~/.config/sway/wallpapers/planet-surface-horizon-stars-galaxy_1200x1920.jpg fill
swaymsg output DP-5 background ~/.config/sway/wallpapers/space_ultrawide.jpg fill

killall waybar
waybar -c ~/.config/waybar/home-config &

exit 0
