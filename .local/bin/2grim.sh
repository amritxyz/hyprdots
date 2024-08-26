#!/bin/bash

# Directory to save screenshots
SAVE_DIR=~/.local/img

if [ ! -d "$SAVE_DIR" ]; then
    mkdir -p "$SAVE_DIR"
fi

# Find the highest number used in existing filenames
MAX_NUMBER=$(ls -1 $SAVE_DIR/*_screenshot.png 2>/dev/null | \
              awk -F'[_]' '{print $1}' | \
              awk -F/ '{print $NF}' | \
              sort -n | \
              tail -1)

# ls -1 ~/Pictures/*_screenshot.png | awk -F'[_]' '{print $1}' | awk -F/ '{print $NF}' | sort -n | tail -1

# Check if ls found any files
if [ -z "$MAX_NUMBER" ]; then
  # If no files were found, set MAX_NUMBER to 0
  MAX_NUMBER=0
fi

# Print debug output
echo "MAX_NUMBER: $MAX_NUMBER"

# Determine the next number
NEXT_NUMBER=$((MAX_NUMBER + 1))

# Print debug output
echo "NEXT_NUMBER: $NEXT_NUMBER"

# Create the screenshot with the new filename
FILENAME="$SAVE_DIR/${NEXT_NUMBER}_screenshot.png"

# Print debug output
echo "FILENAME: $FILENAME"

# Get the region to capture
REGION=$(slurp)

# Print debug output
echo "REGION: $REGION"

# Check if slurp produced any output
if [ -n "$REGION" ]; then
  grim -g "$REGION" "$FILENAME"
  echo "Screenshot saved as $FILENAME"
else
  echo "Error: unable to capture region"
fi
