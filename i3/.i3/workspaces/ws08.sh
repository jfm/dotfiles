#!/bin/bash
. ~/.i3/env
i3-msg "workspace 8:Media; append_layout ~/.i3/layouts/workspace8-media.json"
i3-msg "workspace 8:Media; exec urxvt -name tasks"
i3-msg "workspace 8:Media; exec urxvt -name newsbeuter -e newsbeuter"
i3-msg "workspace 8:Media; exec urxvt -name ncmpcpp -e ncmpcpp"
i3-msg "workspace 8:Media; move workspace to output $LAPTOP"
