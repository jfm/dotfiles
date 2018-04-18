#!/bin/sh

killall polybar
polybar topbar1 -c ~/.config/polybar/laptop-config &
feh --bg-scale --zoom fill ~/.config/i3/wallpaper/fedora_simple.jpg &