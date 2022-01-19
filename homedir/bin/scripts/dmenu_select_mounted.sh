#!/bin/bash

TARGET=$(find /run/media/yann -maxdepth 1 | cut -d/ -f5 | sed 1d | sort |\
 	dmenu -i -nb "#1b2235" -sb "#874f5c" -fn 'monospace:bold:pixelsize=20' -l 41 -p "Select mounted media")

if [ $TARGET != " " ]; then
	ln -s /run/media/yann/"$TARGET" ~/mnt/"$TARGET"
	alacritty -e ranger ~/mnt/"$TARGET" 
fi
