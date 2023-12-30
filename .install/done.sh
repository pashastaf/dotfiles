#!/bin/sh
#  
# made and verified pstf
# ------------------------------------------------------
# Function: remove tmp_folders, choose shell and done
# ------------------------------------------------------
echo -e "${GREEN}"
echo "Deleting temporary files and folders..."
echo -e "${NONE}"
    rm -rf ~/yay
    rm -rf ~/dotfiles-tmp
    chsh -s $(which fish)
    sleep 1
    clear
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
__        __   _ _ ____   ___  _   _ _____ 
\ \      / /__| | |  _ \ / _ \| \ | | ____|
 \ \ /\ / / _ \ | | | | | | | |  \| |  _|  
  \ V  V /  __/ | | |_| | |_| | |\  | |___ 
   \_/\_/ \___|_|_|____/ \___/|_| \_|_____|
                                             
EOF
echo -e "${NONE}"
echo "IMPORTANT notice!"
echo -e "${YELLOW}"
echo "Don't forget to set your monitor: ~/dotfiles/hypr/conf/monitor.conf"
echo ""
echo "Before start using Hyprland, please logout and reboot your system"
echo -e "${NONE}"
