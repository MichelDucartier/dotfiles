#!/bin/bash

length=$(playerctl metadata mpris:length)
current=$(playerctl position)

rescaled_length=$(bc -l <<< "$length/100000000")
progression=$(bc -l <<< "scale=2; $current/$rescaled_length")

echo $progression

