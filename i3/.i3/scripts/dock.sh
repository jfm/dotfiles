#!/bin/bash

if [[ $(iwgetid -r) = *adazio* ]];
then
 ~/.i3/scripts/work-monitors.sh &
 ~/.i3/scripts/work-layout.sh &
fi
if [[ $(iwgetid -r) = *moerks.dk* ]];
then
  ~/.i3/scripts/home-monitors.sh &
  sleep 5
  ~/.i3/scripts/home-layout.sh &
fi

sleep 1
. ~/.i3/env

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
i3-msg "workspace 0:; move workspace to output $SECONDARY"

exit
