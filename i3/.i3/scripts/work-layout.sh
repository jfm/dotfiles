#!/bin/sh

ENV_FILE="/home/jfm/.config/i3/env"

/bin/cat <<EOM >$ENV_FILE
export LAPTOP="eDP-1"
export PRIMARY="DP-2-2"
export SECONDARY="DP-2-1"

export LDPI_PROFILE="default"
export HDPI_PROFILE="laptop"
EOM

~/.config/polybar/work-polybar.sh
feh --bg-scale --zoom fill ~/.config/i3/wallpaper/fedora_simple.jpg