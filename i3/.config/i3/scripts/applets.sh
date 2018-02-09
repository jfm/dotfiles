#!/bin/sh

killall nm-applet
killall pasystray
nohup nm-applet >/dev/null 2>&1 &
nohup pasystray >/dev/null 2>&1 &