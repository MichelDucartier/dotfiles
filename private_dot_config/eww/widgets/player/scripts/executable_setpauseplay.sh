#/bin/sh
sleep 0.1
status="$(playerctl status)"
if [ $status == "Playing" ]; then
    eww update pauseplay=""
else
    eww update pauseplay=""
fi
