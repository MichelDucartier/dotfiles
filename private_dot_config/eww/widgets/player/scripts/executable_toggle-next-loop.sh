#!/bin/bash

current_status=$(playerctl loop)
new_status=$($HOME/.config/eww/widgets/player/scripts/get-next-loop.sh $current_status)

eww update loop-status=$new_status
playerctl loop $new_status
