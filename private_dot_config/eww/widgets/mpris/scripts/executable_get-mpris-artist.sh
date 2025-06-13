artist=$(playerctl metadata xesam:artist)

if [[ $? == 0 ]]; then
    echo $artist
else
    echo ""
fi
