#!/bin/sh

ENV_FILE="/home/jfm/.i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP1"
export PRIMARY="DP1-2"
export SECONDARY="DP1-3"

export LDPI_PROFILE="default"
export HDPI_PROFILE="laptop"
EOM

. $ENV_FILE
killall polybar &
polybar primary &
polybar secondary &
polybar laptop &
