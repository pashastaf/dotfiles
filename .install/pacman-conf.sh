#!/bin/sh
#  
# made and verified by scorpii
# ------------------------------------------------------
# Function: backup and rewrite an existing pacman.conf
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 ____                                  
|  _ \ __ _  ___ _ __ ___   __ _ _ __  
| |_) / _` |/ __| '_ ` _ \ / _` | '_ \ 
|  __/ (_| | (__| | | | | | (_| | | | |
|_|   \__,_|\___|_| |_| |_|\__,_|_| |_|
                                       
EOF
echo -e "${NONE}"
if [ -f /etc/pacman.conf ]; then
    echo -e "${YELLOW}"
    echo "PLEASE NOTE! The script has detected an existing pacman.conf and will backup it"
    echo -e "${NONE}"
    sudo cp /etc/pacman.conf /etc/pacman.conf.bak
    echo -e "${GREEN}"
    echo "Backup of pacman.conf stored in /etc/pacman.conf.bak"
    echo -e "${NONE}"
fi
if gum confirm "Rewrite pacman.conf with the dotfiles prepared?" ;then
    sudo cp ~/dotfiles/pacman.conf /etc/pacman.conf
    sleep 1
    sudo pacman -Sy
elif [ $? -eq 130 ]; then
        exit 130
else
    echo "Rewriting pacman.conf skipped by user"
fi
