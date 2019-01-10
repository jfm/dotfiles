#!/bin/bash
. ~/.config/i3/env
i3-msg "workspace 10:; append_layout ~/.config/i3/layouts/workspace0-timewaste.json"
i3-msg "workspace 10:; exec termite -t weechat -e weechat"
#i3-msg "workspace 0:; exec termite -t music -e ncmpcpp"
i3-msg "workspace 10:; move workspace to output $SECONDARY"
