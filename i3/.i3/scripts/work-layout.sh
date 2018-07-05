#!/bin/sh

ENV_FILE="/home/jfm/.i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP-1"
export PRIMARY="DP-1-2"
export SECONDARY="DP-1-3"

export LDPI_PROFILE="default"
export HDPI_PROFILE="laptop"
EOM

#~/.config/polybar/work-polybar.sh
#feh --bg-scale --zoom fill ~/.config/i3/wallpaper/fedora_simple.jpg
