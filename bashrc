# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Welcome user after opening terminal
echo "Hello, ${USER^}. Welcome to Arch Linux!"

# Load alias files
source ~/.alias_battery
source ~/.alias_wifi
source ~/.alias_time
source ~/.alias_volume
