#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 1: Comms; move workspace to output $SECONDARY"
i3-msg "workspace 2: Web; move workspace to output $PRIMARY"
i3-msg "workspace 3: IDE; move workspace to output $PRIMARY"
i3-msg "workspace 4: Work; move workspace to output $PRIMARY"
i3-msg "workspace 5: Media; move workspace to output $LAPTOP"
i3-msg "workspace 6: REST; move workspace to output $SECONDARY"
i3-msg "workspace 7: OC; move workspace to output $PRIMARY"
i3-msg "workspace 8: Logs; move workspace to output $PRIMARY"
i3-msg "workspace 9: Terminals; move workspace to output $PRIMARY"
i3-msg "workspace 10: Terminals; move workspace to output $PRIMARY"


sleep 1
if [[ $(iwgetid -r) = *adazio* ]]; 
then
  echo "@Work"
  . ~/.config/i3/scripts/work-layout.sh
fi
if [[ $(iwgetid -r) = *moerks.dk* ]]; 
then
  echo "@Home"
  . ~/.config/i3/scripts/home-layout.sh
fi

feh --bg-scale --zoom fill ~/.config/i3/wallpaper/fedora_simple.jpg