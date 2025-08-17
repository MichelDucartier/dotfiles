#!/bin/bash
active_window="$(hyprctl activewindow -j | jq ".monitor" )"
active_window="$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .id')"
# active_window=0
eww open calendar-window --screen $active_window
