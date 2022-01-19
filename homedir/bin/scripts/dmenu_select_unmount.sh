#!/bin/bash

TARGET=$(lsblk | grep /run/media/yann | awk '{print$NF}'| sort |\
 	dmenu -i -nb "#1b2235" -sb "#874f5c" -fn 'monospace:bold:pixelsize=20' -l 41 -p "Unmount media:")

if [ -n "$TARGET" ]; then
	sudo umount "$TARGET"
	rm ~/mnt/$(echo $TARGET | awk -F/ '{print$5}')
fi
