#!/bin/bash

TARGET=$(find /media/yann/ -maxdepth 1 | cut -d/ -f4 | sed 1d | sort |\
 	dmenu -i -nb "#1b2235" -sb "#874f5c" -fn 'monospace:bold:pixelsize=20' -l 41 -p "Select mounted media")

if [ $TARGET != " " ]; then
	xterm -e ranger /media/yann/"$TARGET" 
fi
