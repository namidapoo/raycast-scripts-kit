#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title GIF, Ready to Paste
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🗂️

# Documentation:
# @raycast.author namidapoo
# @raycast.authorURL https://raycast.com/namidapoo

# Path to the GIF file to copy
FILE=~/Documents/demo.gif

# Verify that the file exists
if [[ ! -f "$FILE" ]]; then
	echo "\`demo.gif\` not found."
	exit 1
fi

# Copy the GIF file as a file URL to the clipboard in one step,
# and check its exit status directly.
if ! osascript <<EOF; then
-- Copy the GIF file as a file URL to the clipboard
set the clipboard to (POSIX file "$FILE") as «class furl»
EOF
	echo "Error: Failed to copy to clipboard."
	exit 1
fi

echo "GIF file reference copied to clipboard 🎉"
