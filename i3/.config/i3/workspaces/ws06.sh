#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 6: REST; append_layout ~/.config/i3/layouts/workspace6-rest.json"
i3-msg "workspace 6: REST; exec gnome-terminal --profile $LDPI_PROFILE --title=http-prompt --working-directory=/home/jfm/Customers/TDC/ApiTest -e http-prompt"
i3-msg "workspace 6: REST; move workspace to output $SECONDARY"
