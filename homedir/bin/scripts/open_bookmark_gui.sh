#!/bin/bash

BOOKMARK=$(cat /home/yann/.w3m/bookmarks | sort -u | fzf --exact)

if [ $BOOKMARK != " " ]; then
	$BROWSER "$BOOKMARK" 
	i3-msg workspace 11.Web
fi
	 
