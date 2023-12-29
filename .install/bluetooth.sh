#!/bin/sh
#  
# made and verified by scorpii
# ------------------------------------------------------
# Function: enable systemd bluetooth.service
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 ____  _            _              _   _     
| __ )| |_   _  ___| |_ ___   ___ | |_| |__  
|  _ \| | | | |/ _ \ __/ _ \ / _ \| __| '_ \ 
| |_) | | |_| |  __/ || (_) | (_) | |_| | | |
|____/|_|\__,_|\___|\__\___/ \___/ \__|_| |_|

EOF
echo -e "${NONE}"
if gum confirm "Enable bluetooth.service?"; then
    sudo systemctl enable bluetooth.service
elif [ $? -eq 130 ]; then
        exit 130
else
    echo "Enabling bluetooth.service skipped by user"
fi
