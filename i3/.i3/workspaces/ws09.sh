#!/bin/bash
. ~/.i3/env
i3-msg "workspace 9:News; append_layout ~/.i3/layouts/workspace9-news.json"
i3-msg "workspace 9:News; exec termite -t newsboat -e newsboat"
i3-msg "workspace 9:News; exec termite -t hackernews -d '/home/jfm/Repositories/bark' -e 'pipenv run python Bark.py'"
i3-msg "workspace 9:News; exec termite -t rtv -e 'rtv --enable-media --theme solarized-dark'"
i3-msg "workspace 9:News; move workspace to output $SECONDARY"
