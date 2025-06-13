#!/bin/bash
get_player() {
    for player in $(playerctl -l); do
        if [ "$(playerctl --player="$player" status 2>/dev/null)" = "Playing" ]; then
            printf "%s" "$player"
            break
        fi
    done
}

mprisplayer=$(get_player)

if [[ $mprisplayer == "spotify" ]]; then
    echo "spotify"
elif [[ $mprisplayer == *"firefox"* ]]; then
    echo "firefox"
else
    echo "unknown"
fi

