                                       toggle_keyboard_layout.sh                                                     #!/bin/bash

# Define the default and Czech keyboard layouts
default_layout="us"
czech_layout="cz"

# Get the current active layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Toggle between default and Czech layouts
if [ "$current_layout" == "$default_layout" ]; then
    setxkbmap $czech_layout
    echo "Switched to Czech keyboard layout"
else
    setxkbmap $default_layout
    echo "Switched to default keyboard layout"
fi
