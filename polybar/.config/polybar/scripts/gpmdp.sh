#!/bin/bash

RUNNING_CMD=$(ps ax | grep gpmdp | wc -l)
STATUS_CMD=$(gpmdp-remote status)
CURRENT_CMD=$(gpmdp-remote current)
ICON_PLAYING='\uf001'
ICON_PAUSE='\uf04c'

if [ $RUNNING_CMD -gt 3 ]
then
  if [ $STATUS_CMD == "Playing" ]
  then
    echo -e $ICON_PLAYING $(gpmdp-remote current)
  else
    current=$CURRENT_CMD
    if [ ${#current} -gt 3 ]
    then
      echo -e $ICON_PAUSE $(gpmdp-remote current)
    fi
  fi
fi
