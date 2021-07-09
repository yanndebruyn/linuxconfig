#!/bin/bash

TARGET=$(find /media/yann/ -maxdepth 1 | cut -d/ -f4 | sed 1d | sort |\
 	dmenu -i -fn 'monospace:bold:pixelsize=25' -l 27 -p "Select mounted media")

if [ $TARGET != " " ]; then
	xterm -e ranger /media/yann/"$TARGET" 
fi
