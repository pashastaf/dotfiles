#!/bin/sh
#  
# made and verified by scorpii 
# ------------------------------------------------------
# Function: prepare temporary and $USER folders
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 ____                                      
|  _ \ _ __ ___ _ __   __ _ _ __ ___       
| |_) | '__/ _ \ '_ \ / _` | '__/ _ \      
|  __/| | |  __/ |_) | (_| | | |  __/_ _ _ 
|_|   |_|  \___| .__/ \__,_|_|  \___(_|_|_)
               |_|                         
EOF
echo -e "${NONE}"
mkdir ~/dotfiles-tmp
rsync -a -I --exclude-from=.install/excludes.txt . ~/dotfiles-tmp/
if [ -d ~/.config ]; then
    echo "CONFIG folder already exists"
         else
    mkdir ~/.config
fi
if [ -d ~/.cache ]; then
    echo "CACHE folder already exists"
         else
    mkdir ~/.cache
fi
if [ -d ~/documents ]; then
    echo "Documents folder already exists"
         else
    mkdir ~/documents
fi
if [ -d ~/downloads ]; then
    echo "Downloads folder already exists"
         else
    mkdir ~/downloads
fi
if [ -d ~/Music ]; then
    echo "Music folder already exists"
         else
    mkdir ~/media
fi
echo -e "${GREEN}"
echo "Temporary and $HOME^ folders prepared"
echo -e "${NONE}"
