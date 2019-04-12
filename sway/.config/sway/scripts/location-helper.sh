#!/bin/bash
CONNECTED_CMD="swaymsg -t get_outputs | jq -c '. | length'"
monitors=`eval $CONNECTED_CMD`
HOME_CMD="swaymsg -t get_outputs | grep SyncMaster | wc -l"
is_home=`eval $HOME_CMD`
total=$(($monitors + $is_home))
echo $total
if [[ $monitors = 1 ]];
then
  export LOCATION="laptop"
elif [[ $total = 4 ]];
then
  export LOCATION="home"
elif [[ $total = 3 ]];
then
  export LOCATION="work"
fi


