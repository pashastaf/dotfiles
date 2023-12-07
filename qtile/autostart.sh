#!/bin/sh
sh .config/polybar/launch.sh
picom &
nitrogen --restore &
greenclip daemon &
sudo chronyd &
