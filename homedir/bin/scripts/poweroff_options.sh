
#!/bin/bash

choices="Log_out\nReboot\nPower_off"

selected=$(echo "$choices" | dmenu -i -fn 'monospace:bold:pixelsize=25')

case "$selected" in
	Log_out) xterm -e "i3-msg exit";;
	Reboot) xterm -e "reboot";;
	Power_off)  xterm -e "sudo shutdown -P now";;
esac
