#!/bin/sh
#dex -a ~/.config/autostart/nekoray.desktop 
#dex -a ~/.config/autostart/polkit-gnome-authentication-agent-1.desktop
sh .config/polybar/launch.sh
picom &
nitrogen --restore &
greenclip daemon &
sudo chronyd &
