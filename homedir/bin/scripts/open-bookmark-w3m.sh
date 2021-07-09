#!/bin/bash

# send bookmarks file to fzf and remove the last character from the output with
# sed, because it also grabs the Enter key at the end presumably
w3m `cat $HOME/.config/surfraw/bookmarks | fzf --exact | sed 's/.$//'`
