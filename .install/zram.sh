#!/bin/sh
#  
# made and verified by scorpii
# ------------------------------------------------------
# Function: install and configure zram
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 _________      _    __  __ 
|__  /  _ \    / \  |  \/  |
  / /| |_) |  / _ \ | |\/| |
 / /_|  _ <  / ___ \| |  | |
/____|_| \_\/_/   \_\_|  |_|

EOF
echo -e "${NONE}"
if gum confirm "Install and configure ZRAM?" ;then
    _installPackagesYay "zram-generator";
    sudo touch /etc/systemd/zram-generator.conf
    sudo bash -c 'echo "[zram0]" >> /etc/systemd/zram-generator.conf'
    sudo bash -c 'echo "zram-size = ram / 2" >> /etc/systemd/zram-generator.conf'
    sudo systemctl daemon-reload
    sudo systemctl start /dev/zram0
    echo -e "${GREEN}"
    echo "ZRAM has been installed and configured"
    echo -e "${NONE}"
elif [ $? -eq 130 ]; then
        exit 130
else
    echo "Installing ZRAM skipped by user"
fi
