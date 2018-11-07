#!/bin/sh

ENV_FILE="/home/jfm/.config/i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="DP1-3"
export PRIMARY="DP1-3"
export SECONDARY="DP1-3"

export LOCATION="home"
EOM

. $ENV_FILE

killall polybar &
sleep 1
polybar primary &
nitrogen --restore &
