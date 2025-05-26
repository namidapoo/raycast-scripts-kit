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

FILE=~/Documents/demo.gif

if [[ ! -f "$FILE" ]]; then
	echo "\`demo.gif\` could not be found."
	exit 1
fi

# Use AppleScript (QuickLook framework) to copy the image data to the clipboard
osascript << EOF
set the clipboard to (read (POSIX file "$FILE") as JPEG picture)
EOF

echo "The GIF has been copied to the clipboard 🎉"
