#!/bin/bash
. ~/.config/i3/env
i3-msg "workspace 5: Media; append_layout ~/.config/i3/layouts/workspace5-media.json"
i3-msg "workspace 5: Media; exec gnome-terminal --profile $HDPI_PROFILE --title=tasks"
i3-msg "workspace 5: Media; exec gnome-terminal --profile $HDPI_PROFILE --title=newsbeuter -e newsbeuter"
i3-msg "workspace 5: Media; exec gnome-terminal --profile $HDPI_PROFILE --title=ncmpc -e ncmpcpp"
i3-msg "workspace 5: Media; move workspace to output $LAPTOP"
