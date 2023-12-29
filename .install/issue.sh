#!/bin/sh
#  
# modified by scorpii 
# ------------------------------------------------------
# Function: install custom tty login
# ------------------------------------------------------
if [ $disman == 1 ]; then
echo -e "${CYAN}"
cat <<"EOF"
 _____ _______   ___             _       
|_   _|_   _\ \ / / | ___   __ _(_)_ __  
  | |   | |  \ V /| |/ _ \ / _` | | '_ \ 
  | |   | |   | | | | (_) | (_| | | | | |
  |_|   |_|   |_| |_|\___/ \__, |_|_| |_|
                           |___/         
EOF
echo -e "${NONE}"
    if gum confirm "Install custom tty-login?" ;then
        sudo cp login/issue /etc/issue
        echo -e "${GREEN}"
        echo "CUSTOM tty-login has been installed"
        echo -e "${NONE}"
    elif [ $? -eq 130 ]; then
        exit 130
    else
        echo "CUSTOM tty login rejected by user"
    fi
fi
