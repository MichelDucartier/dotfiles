#!/bin/sh
monitor=$(hyprctl monitors -j | jq "length")
monitor="$((monitor - 1))"
eww open bar --screen $monitor
