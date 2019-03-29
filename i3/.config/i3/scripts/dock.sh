#!/bin/bash

connected_displays=$(xrandr | grep -v disconnected | grep connected | wc -l)
#echo $connected_displays

if [[ $connected_displays = 3 ]];
then
 echo "WORK"
 ~/.config/i3/scripts/work-monitors.sh &
 ~/.config/i3/scripts/work-layout.sh &
fi
if [[ $connected_displays = 2 ]];
then
  ~/.config/i3/scripts/home-monitors.sh &
  ~/.config/i3/scripts/home-layout.sh &
 echo "HOME"
fi

sleep 1
. ~/.config/i3/env

echo $PRIMARY
echo $SECONDARY
echo $LAPTOP

i3-msg "workspace 1:; move workspace to output $LAPTOP"
i3-msg "workspace 2:; move workspace to output $PRIMARY"
i3-msg "workspace 3:; move workspace to output $PRIMARY"
i3-msg "workspace 4:; move workspace to output $PRIMARY"
i3-msg "workspace 5:; move workspace to output $PRIMARY"
i3-msg "workspace 6:; move workspace to output $PRIMARY"
i3-msg "workspace 7:; move workspace to output $PRIMARY"
i3-msg "workspace 8:; move workspace to output $SECONDARY"
i3-msg "workspace 9:; move workspace to output $SECONDARY"
i3-msg "workspace 10:; move workspace to output $SECONDARY"

exit 0
