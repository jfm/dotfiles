#!/bin/sh

killall polybar
polybar topbar1 -c ~/.config3/polybar/home-config &
polybar topbar2 -c ~/.config/polybar/home-config &