#!/bin/bash

# Check for two arguments
# Read arguments
current=$(eww get musicprogression)
total=$(eww get musiclength)

# Function to convert float seconds to MMm SSs format
format_time() {
  local time_in_sec=$1
  local total_seconds=$(echo "$time_in_sec" | awk '{printf("%d", $1)}')
  local minutes=$((total_seconds / 60))
  local seconds=$((total_seconds % 60))
  printf "%02d:%02d" "$minutes" "$seconds"
}

formatted_current=$(format_time "$current")
formatted_total=$(format_time "$total")

echo "$formatted_current / $formatted_total"

