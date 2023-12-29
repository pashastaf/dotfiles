#!/bin/sh
#  
# modified by scorpii
# ------------------------------------------------------
# Function: check and re/install pywal
# ------------------------------------------------------
echo -e "${CYAN}"
cat <<"EOF"
 ____                      _ 
|  _ \ _   ___      ____ _| |
| |_) | | | \ \ /\ / / _` | |
|  __/| |_| |\ V  V / (_| | |
|_|    \__, | \_/\_/ \__,_|_|
       |___/                 
EOF
echo -e "${NONE}"
if [ -f /usr/bin/wal ]; then
    echo "PYWAL already installed, force reinstalling with python-pywal..."
    yay -S --noconfirm python-pywal --ask 4
else
    yay -S --noconfirm python-pywal
    echo -e "${GREEN}"
    echo "PYWAL has been installed"
    echo -e "${NONE}"
fi
