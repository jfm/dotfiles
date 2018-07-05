#!/bin/bash

if [[ $(iwgetid -r) = *adazio* ]]; 
then
  ~/.i3/scripts/work-monitors.sh &
  ~/.i3/scripts/work-layout.sh &
fi
if [[ $(iwgetid -r) = *moerks.dk* ]]; 
then
  ~/.i3/scripts/home-monitors.sh &
  ~/.i3/scripts/home-layout.sh &
fi

sleep 1
. ~/.i3/env

sleep 1
i3-msg "workspace 1:Comms; move workspace to output $LAPTOP"
i3-msg "workspace 2:Web; move workspace to output $PRIMARY"
i3-msg "workspace 3:IDE; move workspace to output $PRIMARY"
i3-msg "workspace 4:Work; move workspace to output $PRIMARY"
i3-msg "workspace 5:OC; move workspace to output $PRIMARY"
i3-msg "workspace 6:Logs; move workspace to output $SECONDARY"
i3-msg "workspace 7:Term; move workspace to output $PRIMARY"
i3-msg "workspace 8:Media; move workspace to output $SECONDARY"

exit
