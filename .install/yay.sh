#!/bin/sh
#  
# modified by scorpii 
# ------------------------------------------------------
# Function: check and install yay if not installed
# ------------------------------------------------------
if sudo pacman -Qs yay > /dev/null ; then
    echo "YAY is already installed"
else
    echo "YAY not installed, going to install it now..."
    SCRIPT=$(realpath "$0")
    SCRIPTPATH=$(dirname "$SCRIPT")
    git clone https://aur.archlinux.org/yay.git ~/yay
    cd ~/yay
    makepkg -si
    cd $SCRIPTPATH
    echo -e "${GREEN}"
    echo "YAY has been installed successfully"
    echo -e "${NONE}"
fi
