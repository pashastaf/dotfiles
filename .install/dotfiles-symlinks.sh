#!/bin/sh
#  
# modified by pstf
# ------------------------------------------------------
# Function: install dotfiles symlinks
# ------------------------------------------------------
    _installSymLink dunst ~/.config/dunst ~/dotfiles/dunst/ ~/.config
    _installSymLink gtk-3.0 ~/.config/gtk-3.0 ~/dotfiles/gtk/gtk-3.0/ ~/.config/
    _installSymLink gtk-4.0 ~/.config/gtk-4.0 ~/dotfiles/gtk/gtk-4.0/ ~/.config/
    _installSymLink .gtkrc-2.0 ~/.gtkrc-2.0 ~/dotfiles/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
    _installSymLink hypr ~/.config/hypr ~/dotfiles/hypr/ ~/.config
    _installSymLink kitty ~/.config/kitty ~/dotfiles/kitty/ ~/.config
    _installSymLink nvim ~/.config/nvim ~/dotfiles/nvim/ ~/.config
    _installSymLink rofi ~/.config/rofi ~/dotfiles/rofi/ ~/.config
    _installSymLink swappy ~/.config/swappy ~/dotfiles/swappy/ ~/.config
    _installSymLink waybar ~/.config/waybar ~/dotfiles/waybar/ ~/.config
    _installSymLink user-dirs.dirs ~/.config/user-dirs.dirs ~/dotfiles/user-dirs.dirs ~/.config/user-dirs.dirs
    _installSymLink user-dirs.locale ~/.config/user-dirs.locale ~/dotfiles/user-dirs.locale ~/.config/user-dirs.locale
    _installSymLink .Xresources ~/.Xresources ~/dotfiles/gtk/.Xresources ~/.Xresources
echo -e "${GREEN}"
echo "Symbolic links has been created"
echo -e "${NONE}"
