#!/bin/bash

TARGET=$(find /home/yann/bin/scripts/ \( -name "*sh" \) | cut -d/ -f6 |\
 	sort | dmenu -i -fn 'monospace:bold:pixelsize=25' -l 27 -p "Run script")

if [ $TARGET != " " ]; then
	xterm -e '/home/yann/bin/scripts/'$TARGET
fi
