#!/bin/bash

SCRIPT=$(ls /home/yann/bin/scripts | sort -u | fzf --exact)

if [ ! -z $SCRIPT ]; then
	nvim /home/yann/bin/scripts/"$SCRIPT" 
fi
	 
