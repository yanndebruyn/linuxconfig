#!/bin/bash

BRIGHTNESS=`cat /sys/class/backlight/intel_backlight/brightness`

BRIGHTNESS=$(($BRIGHTNESS + 5000))

sudo bash -c "echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness"
