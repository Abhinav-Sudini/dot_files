#!/usr/bin/env bash
# fzf-preview.sh
# Usage: fzf-preview.sh <file>

FILE="$1"

# Check if file exists
if [[ ! -e "$FILE" ]]; then
  echo "File not found: $FILE"
  exit 1
fi

# Preview based on file type
if [[ -d "$FILE" ]]; then
  # If directory, list contents
  ls -l --color=always "$FILE"
elif file "$FILE" | grep -q text; then
  # If text file, show with syntax highlighting if bat is installed
  if command -v bat >/dev/null 2>&1; then
    bat --style=plain --color=always --line-range :100 "$FILE"
  else
    head -n 100 "$FILE" | less -R
  fi
else
  # for var binaries or unknown types
  file "$FILE"
fi
