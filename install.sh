#!/bin/sh
#  
# made and verified by scorpii
# ------------------------------------------------------
source .install/colors.sh
clear
# ------------------------------------------------------
echo -e "${PURPLE}"
echo -e "${NONE}"
echo -e "${YELLOW}"
echo "The script will guide you through the installation of my Hyprland dotfiles"
echo -e "${NONE}"
# ------------------------------------------------------
source .install/library.sh
source .install/required.sh
source .install/confirm-start.sh
source .install/preparation.sh
source .install/yay.sh
source .install/hyprland.sh
source .install/hyprland-packages.sh
source .install/install-packages.sh
source .install/pywal.sh
source .install/wallpaper.sh
source .install/disabledm.sh
source .install/issue.sh
source .install/copy.sh
source .install/init-pywal.sh
source .install/dotfiles-symlinks.sh
source .install/bluetooth.sh
#source .install/zram.sh
source .install/pacman-conf.sh
source .install/mirrorlist.sh
source .install/done.sh
