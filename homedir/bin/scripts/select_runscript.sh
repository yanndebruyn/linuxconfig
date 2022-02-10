#!/bin/bash

SCRIPT=$(ls /home/yann/bin/scripts | sort -u | fzf --exact)

if [ ! -z $SCRIPT ]; then
	/home/yann/bin/scripts/"$SCRIPT" 
fi
	 
