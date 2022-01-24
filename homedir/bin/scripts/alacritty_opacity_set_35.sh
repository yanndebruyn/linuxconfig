#!/bin/bash

## Fetch background_opacity from alacritty.yml
opacity=$(awk '$1 == "opacity:" {print $2; exit}' \
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
sed -i -- "s/opacity: $opacity/opacity: 0.35/" \
    ~/.config/alacritty/alacritty.yml
