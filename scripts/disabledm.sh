#!/bin/sh
#  
# modified by scorpii 
# ------------------------------------------------------
# Function: disable any display manager
# ------------------------------------------------------
disman=0
if [ -f /etc/systemd/system/display-manager.service ]; then
cat <<"EOF"
 ____  _           _     _      ____  __  __ 
|  _ \(_)___  __ _| |__ | | ___|  _ \|  \/  |
| | | | / __|/ _` | '_ \| |/ _ \ | | | |\/| |
| |_| | \__ \ (_| | |_) | |  __/ |_| | |  | |
|____/|_|___/\__,_|_.__/|_|\___|____/|_|  |_|

EOF
echo ""
echo "An active DM detected..."
echo "IMPORTANT! start Hyprland from tty with command 'Hyprland' is highly recommended"
echo "Login with active DM could fail and make negative side-effects"
echo ""
    if gum confirm "Disable current DM?" ;then
        if [ -f /etc/systemd/system/display-manager.service ]; then
            sudo rm /etc/systemd/system/display-manager.service
            echo "Current DM has been disabled..."
        fi
        disman=1
    elif [ $? -eq 130 ]; then
        exit 130
    else
        echo "Disabling DM skipped by user..."
        echo "You can run ~/dotfiles/script/disabledm.sh later if needed"
    fi
    echo ""
else
    disman=1
fi
