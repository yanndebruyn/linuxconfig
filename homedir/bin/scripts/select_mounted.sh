#!/bin/bash

DEVICE=$(find /run/media/yann -maxdepth 1 | cut -d/ -f5 | sed 1d | sort -u | fzf --exact)

if [ ! -z $DEVICE ]; then
	ln -s /run/media/yann/"$DEVICE" ~/mnt/"$DEVICE"
	ranger ~/mnt/"$DEVICE" 
fi
	 
