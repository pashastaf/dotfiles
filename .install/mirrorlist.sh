#!/bin/sh   
#
# requires pacman-contrib
# made and verified by scorpii
# -----------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 __  __ _                     _     _     _   
|  \/  (_)_ __ _ __ ___  _ __| |   (_)___| |_ 
| |\/| | | '__| '__/ _ \| '__| |   | / __| __|
| |  | | | |  | | | (_) | |  | |___| \__ \ |_ 
|_|  |_|_|_|  |_|  \___/|_|  |_____|_|___/\__|
                                              
EOF
echo -e "${NONE}"
if gum confirm "Update pacman mirrorlist now?" ;then
    echo -e "${GREEN}"
    echo "Fetching and ranking a live mirrorlist started..."
    echo -e "${NONE}"
curl -s "https://archlinux.org/mirrorlist/?country=RU&country=DE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - | sudo tee /etc/pacman.d/mirrorlist
        elif [ $? -eq 130 ]; then
            exit 130
        else
            exit;
fi
    echo -e "${GREEN}"
    echo "Ending..."
    echo -e "${NONE}"
sudo pacman -Syyuu
