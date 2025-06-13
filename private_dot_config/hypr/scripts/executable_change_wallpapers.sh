#!/bin/bash

WALLPAPER_DIRECTORY=~/Pictures/Wallpapers
WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)
while [ $WALLPAPER == $(hyprctl hyprpaper listloaded) ]; do
    WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)
done

killall hyprpaper
eval "hyprpaper" &>/dev/null & disown;
sleep 0.5

hyprctl hyprpaper preload "$WALLPAPER";
for monitor in $(hyprctl monitors | grep 'Monitor' | awk '{ print $2 }'); do
    hyprctl hyprpaper wallpaper "$monitor,$WALLPAPER"
done

hyprctl hyprpaper unload unused
