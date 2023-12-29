#!/bin/sh
gnome_schema="org.gnome.desktop.interface"
gsettings set "$gnome_schema" icon-theme "Papirus-Dark"
gsettings set "$gnome_schema" cursor-theme "capitaine-cursors-light"
gsettings set "$gnome_schema" font-name "Cantarell 11"
gsettings set "$gnome_schema" color-scheme "prefer-light"
