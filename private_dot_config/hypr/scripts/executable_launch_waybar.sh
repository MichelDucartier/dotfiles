#!/bin/sh
# monitor=$(hyprctl monitors -j | jq "length")
# monitor="$((monitor - 1))"
monitor=0
eww open bar --screen $monitor
