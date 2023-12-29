#!/bin/sh
#  
# modified by scorpii
# ------------------------------------------------------
# Function: init pywal with default wallpaper
# ------------------------------------------------------
if [ ! -f ~/.cache/wal/colors-hyprland.conf ]; then
    _installSymLink wal ~/.config/wal ~/dotfiles/wal/ ~/.config
    wal -i ~/dotfiles/wallpapers/default.jpg
    echo -e "${GREEN}"
    echo "PYWAL has been activated"
    echo -e "${NONE}"
else
    echo "PYWAL is active, nothing todo"    
fi
