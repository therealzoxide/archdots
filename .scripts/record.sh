#!/bin/env bash

pgrep -x "wf-recorder" && pkill -INT -x wf-recorder && notify-send -h string:wf-recorder:record -t 1000 "Finished Recording" && exit 0

notify-send "Recording Started"

dateTime=$(date +%m-%d-%Y-%H:%M:%S)
wf-recorder -a -f $HOME/Videos/$dateTime.mp4 --output DP-1
