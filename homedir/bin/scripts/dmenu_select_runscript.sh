#!/bin/bash

TARGET=$(find /home/yann/bin/scripts/ \( -name "*sh" \) | cut -d/ -f6 |\
 	sort | dmenu -i -nb "#1b2235" -sb "#874f5c" -fn 'monospace:bold:pixelsize=20' -l 41 -p "Run script")

if [ $TARGET != " " ]; then
	alacritty -e '/home/yann/bin/scripts/'$TARGET
fi
