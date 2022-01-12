#!/bin/bash

## Fetch background_opacity from alacritty.yml
opacity=$(awk '$1 == "background_opacity:" {print $2; exit}' \
    ~/.config/alacritty/alacritty.yml)

## Assign toggle opacity value
# case $opacity in
#   1)
#     toggle_opacity=0.9
#     ;;
#   *)
#     toggle_opacity=1
#     ;;
# esac

## Replace opacity value in alacritty.yml
sed -i -- "s/background_opacity: $opacity/background_opacity: 0.35/" \
    ~/.config/alacritty/alacritty.yml
