#!/bin/sh
#
# required packages: yay
# made and verified by scorpii
# -----------------------------------------------------
cat <<"EOF"
 _   _           _       _       
| | | |_ __   __| | __ _| |_ ___ 
| | | | '_ \ / _` |/ _` | __/ _ \
| |_| | |_) | (_| | (_| | ||  __/
 \___/| .__/ \__,_|\__,_|\__\___|
      |_|                        
EOF
# -----------------------------------------------------
if gum confirm "Start update right now?" ;then
    echo -e '\033[1;32m'
    echo "Update started..."
    echo -e '\033[0m'
    yay
    sleep 1
elif [ $? -eq 130 ]; then
        exit 130
else
    exit;
fi
notify-send "Update complete"
