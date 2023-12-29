#!/bin/sh
#  
# modified by scorpii 
# ------------------------------------------------------
# Function: install necessary packages for Hyprland
# ------------------------------------------------------
_installPackagesPacman "${packagesPacman[@]}";
sleep 1
_installPackagesYay "${packagesYay[@]}";
echo ""