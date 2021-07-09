#!/bin/bash

BRIGHTNESS=`cat /sys/class/backlight/intel_backlight/brightness`

if [[ "${BRIGHTNESS}" == 0 ]]; then
	echo "is 0"
	echo $BRIGHTNESS
	BRIGHTNESS=60000
	echo $BRIGHTNESS
else
	echo "is not 0"
	echo $BRIGHTNESS
	BRIGHTNESS=0
	echo $BRIGHTNESS
fi

sudo bash -c "echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness"
