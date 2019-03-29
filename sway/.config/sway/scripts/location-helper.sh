#!/bin/bash
CONNECTED_CMD="swaymsg -t get_outputs | jq -c '. | length'"
monitors=`eval $CONNECTED_CMD`

if [[ $monitors = 1 ]];
then
  export LOCATION="laptop"
elif [[ $monitors = 2 ]];
then
  export LOCATION="home"
elif [[ $monitors = 3 ]];
then
  export LOCATION="work"
fi


