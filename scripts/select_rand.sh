#!/bin/bash

# Directory (default to current if not given)
DIR="/home/abhi/.config/ascii-art/art"

# Check if directory exists
if [ ! -d "$DIR" ]; then
  echo "Error: $DIR is not a directory"
  exit 1
fi

# Get a random file (only regular files)
FILE=$(find "$DIR" -type f | shuf -n 1)

# If no files found
if [ -z "$FILE" ]; then
  echo "No files found in $DIR"
  exit 1
fi

colors=(
  "\e[38;2;164;202;255m"
  "\e[38;2;250;209;239m"
  "\e[38;2;150;250;203m"
)

# Pick random index
rand=$((RANDOM % ${#colors[@]}))

# Print the selected color escape (followed by resetting color)
echo -e "${colors[$rand]}"

echo -e "$(cat "$FILE")"
echo -e "\e[0m"
