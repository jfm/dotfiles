#!/bin/sh

ENV_FILE="/home/jfm/.i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="DP1-2"
export PRIMARY="DP1-3"
export SECONDARY="DP1-2"

export LDPI_PROFILE="default"
export HDPI_PROFILE="laptop"
EOM

. $ENV_FILE

killall polybar &
sleep 1
polybar primary &
polybar secondary &
nitrogen --restore &
