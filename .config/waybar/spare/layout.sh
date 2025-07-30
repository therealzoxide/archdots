#!/bin/bash

#find layout to know which to toggle to
layout=$(hyprctl getoption general:layout | grep str:)

#toggle layout
if [ "$1" = toggle ] && [[ $layout == "str: dwindle" ]]; then
	hyprctl keyword general:layout "master"
elif [ "$1" = toggle ] && [[ $layout == "str: master" ]]; then
	hyprctl keyword general:layout "dwindle"
fi

#find layout to know which one is current after toggling
layout=$(hyprctl getoption general:layout | grep str:)

#display current layout
if  [[ $layout == "str: dwindle" ]]; then
	echo "[=]"
else
	echo "[]="
fi

exit
