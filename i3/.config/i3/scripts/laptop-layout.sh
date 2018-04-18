#!/bin/sh

ENV_FILE="/home/jfm/.config/i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP-1"
export PRIMARY="eDP-1"
export SECONDARY="eDP-1"

export LDPI_PROFILE="laptop"
export HDPI_PROFILE="laptop"
EOM

~/.config/polybar/laptop-polybar.sh &

