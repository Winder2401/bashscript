#!/bin/bash
#install yay
 ISYAY=/sbin/yay
if [ -f "$ISYAY" ]; then 
    echo -e "yay was located, moving on.\n"
    yay -Suy
else 
    git clone https://aur.archlinux.org/yay-bin
    cd yay-bin
    makepkg -si
    yay --version
fi
########################################################################
#install sway and nessesery packeges
    yay -S --noconfirm sway swaybg swayidle swayimg swaylock wl-clipboard xorg-xwayland wayland wayland-docs wayland-protocols wayland-utils ntfs-3g gvfs gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb
#install apps
    yay -S --noconfirm google-chrome thunar vim neovim alacritty 
#configure sway
cp -r dotconfig/sway ~/.config/
sh dotconfig/nvim/packerinstall.sh
cp -r dotconfig/nvim ~/.config/
#install and configure zsh
read -n1 -rep 'Would you like zsh to be installed' WIFI
if [[ $WIFI == "Y" || $WIFI == "y" ]]; then
yay -S --noconfirm zsh

fi


