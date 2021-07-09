#!/bin/bash

clear

# select your elvi
PREFIX=$(surfraw -elvi | grep -v 'LOCAL\|GLOBAL' | fzf -e | awk '{print $1}')

# exit script if no elvi is selected (e.g hit ESC)
if [ "$PREFIX" = "" ]; then exit; fi

# get user input
read -r -e -p "  $PREFIX >> Enter Your Search Keyword:  " INPUT

# print proper url and copy to clipboard
surfraw -browser=echo "$PREFIX" "$INPUT" | xsel -b
