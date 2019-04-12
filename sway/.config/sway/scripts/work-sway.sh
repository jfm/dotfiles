#!/bin/bash

swaymsg output eDP-1 enable
swaymsg output DP-4 enable
swaymsg output DB-5 enable
swaymsg output eDP-1 scale 1.5
swaymsg output eDP-1 pos 0 0 res 2560 1440
swaymsg output DP-5 pos 1706 0 res 1920 1080
swaymsg output DP-4 pos 3626 0 res 1680 1050
swaymsg output eDP-1 background ~/.config/sway/wallpapers/space_2560x1440.jpg fill
swaymsg output DP-4 background ~/.config/sway/wallpapers/planet_rings_1680x1050.jpg fill
swaymsg output DP-5 background ~/.config/sway/wallpapers/solar_eclipse_1920x1080.jpg fill

killall waybar
waybar -c ~/.config/waybar/work-config &

exit 0
