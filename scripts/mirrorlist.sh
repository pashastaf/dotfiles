#!/bin/sh   
#
# required packages: pacman-contrib
# made and verified by scorpii
# -----------------------------------------------------
cat <<"EOF"
 __  __ _                     _     _     _   
|  \/  (_)_ __ _ __ ___  _ __| |   (_)___| |_ 
| |\/| | | '__| '__/ _ \| '__| |   | / __| __|
| |  | | | |  | | | (_) | |  | |___| \__ \ |_ 
|_|  |_|_|_|  |_|  \___/|_|  |_____|_|___/\__|
                                              
EOF
# ------------------------------------------------------
if gum confirm "Update pacman mirrorlist now?" ;then
    echo -e '\033[1;32m'
    echo "Fetching and ranking a live mirrorlist started..."
    echo -e '\033[0m'
    curl -s "https://archlinux.org/mirrorlist/?country=RU&country=DE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - | sudo tee /etc/pacman.d/mirrorlist
        elif [ $? -eq 130 ]; then
            exit 130
        else
            exit;
fi
    echo -e '\033[1;32m'
    echo "Ending..."
    echo -e '\033[0m'
    sudo pacman -Syyuu
    sleep 1
notify-send "Creation a fresh mirrorlist finished"
