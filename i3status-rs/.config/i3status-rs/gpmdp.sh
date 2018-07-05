#!/bin/bash

STATUS_CMD=$(gpmdp-remote status)
ICON='\uf001'

if [ $STATUS_CMD == "Playing" ] 
then
  echo -e $ICON $(gpmdp-remote current)
fi
