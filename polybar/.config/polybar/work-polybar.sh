#!/bin/sh

killall polybar
polybar topbar1 -c ~/.config/polybar/work-config &
polybar topbar2 -c ~/.config/polybar/work-config &
polybar topbar3 -c ~/.config/polybar/work-config &