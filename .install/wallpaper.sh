#!/bin/sh
#  
# modified by scorpii 
# ------------------------------------------------------
# Function: set default wallpaper in ~/.cache
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
__        __    _ _                                 
\ \      / /_ _| | |_ __   __ _ _ __   ___ _ __ 
 \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__|
  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |  
   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|  
                   |_|         |_|                 
EOF
echo -e "${NONE}"
if [ ! -f ~/.cache/current_wallpaper.jpg ]; then
cp wallpapers/default.jpg ~/.cache/current_wallpaper.jpg
echo -e "${GREEN}"
echo "Default wallpaper has been set"
echo -e "${NONE}"
fi
