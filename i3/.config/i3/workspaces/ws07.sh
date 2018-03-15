#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 7: OC; append_layout ~/.config/i3/layouts/workspace7-oc.json"
i3-msg "workspace 7: OC; exec gnome-terminal --profile $LDPI_PROFILE --title=oc-shell1"
i3-msg "workspace 7: OC; exec gnome-terminal --profile $LDPI_PROFILE --title=oc-shell2"
i3-msg "workspace 7: OC; exec gnome-terminal --profile $LDPI_PROFILE --title=oc-shell3"
i3-msg "workspace 7: OC; move workspace to output $PRIMARY"
