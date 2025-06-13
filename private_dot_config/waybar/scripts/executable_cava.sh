#!/bin/bash

# Get current player name
PLAYER=$(playerctl -a metadata --format '{{playerName}}' 2>/dev/null | head -n 1)

# You could also parse cava output here or from a pipe if you want spectrum
# For now, let's just output a placeholder bar
BAR="▂▄▆█"

# Sanitize the player name (remove unsafe chars, lowercase)
CLASS=$(echo "$PLAYER" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:]')

# Output JSON for Waybar
echo "{\"text\": \"$BAR\", \"class\": \"$CLASS\"}"

