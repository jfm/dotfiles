#!/bin/bash
. ~/.config/i3/env

if [ $LOCATION = "home" ];
then
  i3-msg "workspace 9:; append_layout ~/.config/i3/layouts/ws-news-wide.json"
  i3-msg "workspace 9:; exec termite -t newsboat -e newsboat --hold"
  i3-msg "workspace 9:; exec termite -t bark -d '/home/jfm/Repositories/bark' -e 'pipenv run python Bark.py' --hold"
  i3-msg "workspace 9:; exec termite -t rtv -e 'rtv --enable-media --theme default' --hold"
  i3-msg "workspace 9:; exec spotify"
  i3-msg "workspace 9:; move workspace to output $PRIMARY"
else
  i3-msg "workspace 9:; append_layout ~/.config/i3/layouts/workspace9-news.json"
  i3-msg "workspace 9:; exec termite -t newsboat -e newsboat --hold"
  i3-msg "workspace 9:; exec termite -t hackernews -d '/home/jfm/Repositories/bark' -e 'pipenv run python Bark.py' --hold"
  i3-msg "workspace 9:; exec termite -t rtv -e 'rtv --enable-media --theme default' --hold"
  i3-msg "workspace 9:; move workspace to output $SECONDARY"
fi
