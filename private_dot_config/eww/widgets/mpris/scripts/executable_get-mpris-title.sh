title=$(playerctl metadata xesam:title)

if [[ $? == 0 ]]; then
    echo $title
else
    echo ""
fi
