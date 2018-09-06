#!/bin/sh

ENV_FILE="/home/jfm/.i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP1"
export PRIMARY="HDMI1"
export SECONDARY="eDP1"

export LDPI_PROFILE="default"
export HDPI_PROFILE="laptop"
EOM

#~/.config/polybar/home-polybar.sh
