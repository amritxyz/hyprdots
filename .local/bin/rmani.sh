#!/bin/bash
LOC=~/.config/hypr/animations.conf

# Check if the file exists; if not, create it
if [[ ! -f $LOC ]]; then
    touch "$LOC"
fi

# Toggle the 'enabled' setting
if grep -q "enabled = yes" "$LOC"; then
    sed -i 's/enabled = yes/enabled = no/' "$LOC"
elif grep -q "enabled = no" "$LOC"; then
    sed -i 's/enabled = no/enabled = yes/' "$LOC"
else
    # If 'enabled' is not found, append the default setting
    echo "animations {\n    enabled = yes\n}" >> "$LOC"
fi
