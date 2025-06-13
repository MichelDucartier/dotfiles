#!/bin/bash

current_status=$(playerctl shuffle)
new_status=$($HOME/.config/eww/widgets/player/scripts/get-next-shuffle.sh $current_status)

eww update shuffle-status=$new_status
playerctl shuffle $new_status
