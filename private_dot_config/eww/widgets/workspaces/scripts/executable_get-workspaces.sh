#!/usr/bin/env bash

# spaces (){
# 	WORKSPACE_WINDOWS=$(hyprctl workspaces -j | jq 'map({key: .id | tostring, value: .windows}) | from_entries')
# 	seq 1 10 | jq --argjson windows "${WORKSPACE_WINDOWS}" --slurp -Mc 'map(tostring) | map({id: ., windows: ($windows[.]//0)})'
# }
spaces () {
  hyprctl workspaces -j | jq -c 'map(select(.windows > 0)) | sort_by(.id) | map({id: (.id | tostring), windows})'
}


spaces
socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	spaces
done
