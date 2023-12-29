#!/bin/sh
#  
# modified by pstf 
# ------------------------------------------------------
# Function: copy dotfiles-pstf
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
  ____                  ____        _    __ _ _           
 / ___|___  _ __  _   _|  _ \  ___ | |_ / _(_) | ___  ___ 
| |   / _ \| '_ \| | | | | | |/ _ \| __| |_| | |/ _ \/ __|
| |__| (_) | |_) | |_| | |_| | (_) | |_|  _| | |  __/\__ \
 \____\___/| .__/ \__, |____/ \___/ \__|_| |_|_|\___||___/
           |_|    |___/                                   

EOF
echo -e "${NONE}"
echo -e "${YELLOW}"
echo "Please BACKUP your configurations in ~/.config if needed"
echo -e "${NONE}"
if gum confirm "Install the prepared dotfiles now?" ;then
    mkdir ~/dotfiles
    rsync -a -I ~/dotfiles-tmp/ ~/dotfiles/
    echo -e "${GREEN}"
    echo "Files from temporary folder has been copied to ~/dotfiles"
    echo -e "${NONE}"
elif [ $? -eq 130 ]; then
        exit 130
else
    exit
fi
