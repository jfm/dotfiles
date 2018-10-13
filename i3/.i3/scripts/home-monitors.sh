#!/bin/sh
export DISPLAY=:0
export XAUTHORITY=/home/jfm/.Xauthority

xrandr --output VIRTUAL1 --off
xrandr --output eDP1 --off
xrandr --output DP1 --off
xrandr --output HDMI2 --off
xrandr --output HDMI1 --off
xrandr --output DP1-1 --off
xrandr --output DP2 --off
xrandr --output DP1-3 --primary --mode 1920x1200 --pos 0x0 --rotate normal
xrandr --output DP1-2 --mode 1920x1200 --pos 1920x0 --rotate normal
