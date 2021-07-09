#!/bin/bash

TARGET=$(lsblk | grep /media | awk '{print$NF}'| sort |\
 	dmenu -i -fn 'monospace:bold:pixelsize=25' -l 27 -p "Unmount media:")

if [ -n "$TARGET" ]; then
	sudo umount "$TARGET"
fi
