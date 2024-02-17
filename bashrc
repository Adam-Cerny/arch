# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Welcome user after opening terminal
echo "Hello, ${USER^}. Welcome to Arch Linux!"

# Tex help files cleaning alias
alias texclear='find -type f \( -name "*.aux" -o -name "*.log" -o -name "*.fls" -o -name "*.fdb_latexmk" -o -name "*.synctex.gz" \) -exec rm {} +'

# List returns bold directory names alias
alias ls='ls --color=auto --group-directories-first -1'

# Alias to run brave browser 
alias brave='nohup brave &>/dev/null'

# Load alias files
source ~/.alias_battery
source ~/.alias_wifi
source ~/.alias_time
source ~/.alias_volume
source ~/.alias_idle

# Automatically set volume to 0 on log in
vol 0 

# Automatically change to the user's home directory on log in
cd

# Automatically clean Tex help files on login
texclear
