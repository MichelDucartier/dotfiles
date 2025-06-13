#!/bin/bash
eww update pauseplay=$(playerctl status)
eww update loop-status=$(playerctl loop | tr '[:upper:]' '[:lower:]')
eww update shuffle-status=$(playerctl shuffle | tr '[:upper:]' '[:lower:]')
