#!/bin/bash

if [[ $1 == "None" ]]; then
    echo "playlist"
elif [[ $1 == "Playlist" ]]; then
    echo "track"
else 
    echo "none"
fi

