#!/bin/bash
. ~/.i3/env
i3-msg "workspace 8:Media; append_layout ~/.i3/layouts/workspace8-media.json"
i3-msg "workspace 8:Media; exec urxvt -fn xft:Terminus:pixelsize=22 -name newsboat -e newsboat"
#i3-msg "workspace 8:Media; exec urxvt -fn xft:Terminus:pixelsize=20 -name ncmpcpp -e ncmpcpp"
i3-msg "workspace 8:Media; move workspace to output $LAPTOP"
