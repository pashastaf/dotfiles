#!/bin/sh
#
# modified by scorii
# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------
echo -e "${YELLOW}"
echo "IMPORTANT! You can cancel the installation at any time with CMD + C"
echo -e "${NONE}"
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
if [ $SCRIPTPATH = "/home/$USER/dotfiles" ]; then
    echo -e "${PURPLE}"
    echo "IMPORTANT! You're running the installation script from the target directory"
    echo "Please move the installation folder to ~/Downloads/ and start the script again"
    echo "Proceeding is not recommended"
    echo -e "${NONE}"
fi
# ------------------------------------------------------
if gum confirm "Start the installation process right now?" ;then
    echo -e "${GREEN}"
    echo "Starting..."
    echo -e "${NONE}"
elif [ $? -eq 130 ]; then
        exit 130
else
    exit;
fi
