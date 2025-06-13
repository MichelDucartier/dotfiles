!#bin/bash
battery_capacity=$(eww get EWW_BATTERY | jq '.BAT0.capacity')
python ./widgets/battery/scripts/get_battery_icon.py $battery_capacity

