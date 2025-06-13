#!/bin/bash

current_status=$(playerctl status)
if [[ $current_status == "Playing" ]]; then
    eww update pauseplay="Paused"
else
    eww update pauseplay="Playing"
fi

playerctl play-pause
