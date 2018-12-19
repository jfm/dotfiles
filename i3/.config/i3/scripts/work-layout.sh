#!/bin/sh

ENV_FILE="/home/jfm/.config/i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP1"
export PRIMARY="DP1-3"
export SECONDARY="DP1-2"

export LOCATION="work"
EOM

. $ENV_FILE
killall polybar &
sleep 1
polybar primary &
polybar secondary &
polybar laptop &
nitrogen --restore &
