#!/bin/bash

CONNECTED_CMD="xrandr --query | grep connected | grep -v disconnected | wc -l"
monitors=`eval $CONNECTED_CMD`

echo $monitors
if [ $monitors -gt 1 ]
then
	~/.i3/scripts/dock.sh &
else
	~/.i3/scripts/undock.sh &
fi
