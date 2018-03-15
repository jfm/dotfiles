#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 4: Work; append_layout ~/.config/i3/layouts/workspace4-work.json"
i3-msg "workspace 4: Work; exec subl"
i3-msg "workspace 4: Work; exec gnome-terminal --profile $LDPI_PROFILE --title=shell1"
i3-msg "workspace 4: Work; exec gnome-terminal --profile $LDPI_PROFILE --title=shell2"
i3-msg "workspace 4: Work; move workspace to output $PRIMARY"