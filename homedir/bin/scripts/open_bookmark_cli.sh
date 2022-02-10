#!/bin/bash

BOOKMARK=$(cat /home/yann/.w3m/bookmarks | sort -u | fzf --exact)

if [ $BOOKMARK != " " ]; then
	$BROWSERCLI "$BOOKMARK" 
fi
	 
