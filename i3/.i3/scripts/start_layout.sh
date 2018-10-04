#!/bin/bash

CONNECTED_CMD="xrandr --query | grep connected | grep -v disconnected | wc -l"
monitors=`eval $CONNECTED_CMD`

sleep 5
if [ $monitors -gt 1 ]
then
  ~/.i3/scripts/dock.sh &
  . ~/.i3/env

  sleep 1
  polybar primary
  polybar secondary
  polybar laptop
else
  ~/.i3/scripts/undock.sh &
  . ~/.i3/env

  sleep 1
  polybar primary
fi
