#!/bin/sh

killall polybar
#polybar traybar -c ~/.config/i3/polybar/config &
polybar topbar1 -c ~/.config/i3/polybar/home-config &
polybar topbar2 -c ~/.config/i3/polybar/home-config &