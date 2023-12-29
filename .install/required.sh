#!/bin/sh
#  
# modified by scorpii 
# ------------------------------------------------------
# Function: sync pacman database and install packages
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 ____                  _              _ 
|  _ \ ___  __ _ _   _(_)_ __ ___  __| |
| |_) / _ \/ _` | | | | | '__/ _ \/ _` |
|  _ <  __/ (_| | |_| | | | |  __/ (_| |
|_| \_\___|\__, |\__,_|_|_|  \___|\__,_|
              |_|                       
EOF
echo -e "${NONE}"
sudo pacman -Sy
_installPackagesPacman "git" "rsync" "gum";
