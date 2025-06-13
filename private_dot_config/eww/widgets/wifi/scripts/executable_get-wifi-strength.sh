!#bin/bash
# Get the signal strength as a percentage
SIGNAL=$(nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d: -f2)
echo $SIGNAL
