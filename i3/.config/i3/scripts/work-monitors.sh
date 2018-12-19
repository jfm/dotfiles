#!/bin/sh
export DISPLAY=:0
export XAUTHORITY=/home/jfm/.Xauthority

xrandr --output HDMI-2 --off
xrandr --output HDMI-1 --off
xrandr --output DP-1 --off
xrandr --output DP-2 --off
xrandr --output DP-1-1 --off
xrandr --output DP1-2 --mode 1680x1050 --pos 4480x0 --rotate normal
xrandr --output eDP-1 --mode 2560x1440 --pos 0x0 --rotate normal 
xrandr --output DP1-3 --primary --mode 1920x1080 --pos 2560x0 --rotate normal
