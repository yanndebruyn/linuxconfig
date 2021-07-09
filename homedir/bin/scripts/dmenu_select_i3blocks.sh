#!/bin/bash

TARGET=$(find /home/yann/.config/i3/blocks/ \( -name "*" \) | cut -d/ -f7 | \
	sed 1d | sort | dmenu -i -fn 'monospace:bold:pixelsize=25' -l 27 \
	-p "Edit i3 block")

if [ $TARGET != " " ]; then
	xterm -e /bin/bash -c "stty -ixon; vim /home/yann/.config/i3/blocks/$TARGET"
fi
