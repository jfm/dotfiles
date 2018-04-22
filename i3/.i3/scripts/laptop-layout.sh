#!/bin/sh

ENV_FILE="/home/jfm/.i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP1"
export PRIMARY="eDP1"
export SECONDARY="eDP1"

export LDPI_PROFILE="laptop"
export HDPI_PROFILE="laptop"
EOM

#~/.config/polybar/laptop-polybar.sh &

