#!/bin/sh

killall polybar
polybar topbar1 -c ~/.config/i3/polybar/work-config &
polybar topbar2 -c ~/.config/i3/polybar/work-config &
polybar topbar3 -c ~/.config/i3/polybar/work-config &