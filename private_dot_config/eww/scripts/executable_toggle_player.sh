#!/bin/bash
# active_window="$(hyprctl activewindow -j | jq ".monitor" )"
active_window="$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .id')"
eww open player --screen $active_window
