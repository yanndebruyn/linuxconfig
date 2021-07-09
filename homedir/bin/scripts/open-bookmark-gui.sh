#!/bin/bash

$BROWSER `cat $HOME/.w3m/bookmarks | sort -u | fzf --exact`
