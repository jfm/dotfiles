#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 1: Comms; append_layout ~/.config/i3/layouts/workspace1-comms.json"
i3-msg "workspace 1: Comms; exec gnome-terminal --profile $LDPI_PROFILE --title=weechat -e weechat"
i3-msg "workspace 1: Comms; move workspace to output $SECONDARY"
