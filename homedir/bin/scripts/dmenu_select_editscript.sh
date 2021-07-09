#!/bin/bash

TARGET=$(find /home/yann/bin/scripts/ \( -name "*sh" \) | cut -d/ -f6 | sort |\
 	dmenu -i -fn 'monospace:bold:pixelsize=25' -l 27 -p "Edit script")

if [ $TARGET != " " ]; then
	alacritty -e /bin/bash -c "stty -ixon; vim /home/yann/bin/scripts/$TARGET"
fi
