#!/bin/bash

which_player() {
    for player in $(playerctl -l); do
        if [ "$(playerctl --player="$player" status 2>/dev/null)" = "Playing" ]; then
            printf "%s" "$player"
            break
        fi
    done
}

mprisplayer=$(which_player)

if [[ $mprisplayer == "spotify" ]]; then
    echo ""
elif [[ $mprisplayer == *"firefox"* ]]; then
    echo "󰈹"
else
    echo "󰝛"
fi


