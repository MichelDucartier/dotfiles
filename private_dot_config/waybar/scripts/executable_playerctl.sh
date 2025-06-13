#!/bin/sh

class=$(playerctl status)

if [[ $class == "Playing" ]] || [[ $class == "Paused" ]] || [[ $class == "Stopped" ]]; then
	info=$(playerctl metadata --format '{{duration(position)}} / {{duration(mpris:length)}} | {{artist}} - {{title}}')

    # Cut name if too long
    if [[ ${#info} > 40 ]]; then
        info=$(echo $info | cut -c1-40)"..."
    fi

    text=$info
fi

    echo -e "{\"text\":\""$text"\"}"
