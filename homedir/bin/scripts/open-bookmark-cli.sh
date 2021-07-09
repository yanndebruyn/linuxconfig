#!/bin/bash

$BROWSERCLI `cat $HOME/.w3m/bookmarks | sort -u | fzf --exact`
