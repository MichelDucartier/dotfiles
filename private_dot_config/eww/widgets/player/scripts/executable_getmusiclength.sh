!#bin/sh

length=$(playerctl metadata mpris:length)
if [[ $? != 1 ]]; then
    rescaled_length=$(bc -l <<< "$length/1000000")
    echo $rescaled_length
else
    echo "0"
fi
