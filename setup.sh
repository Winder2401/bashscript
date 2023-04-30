#!/bin/bash
ISYAY=/sbin/yay
if [ -f "$ISYAY" ]; then 
    echo -e "yay was located, moving on.\n"
    yay -Suy
else 
    git clone https://aur.archlinux.org/yay-bin
    cd yay-bin
    makepkg -si
    yay --version
    cd ..
fi
########################################################################
read -n1 -rep 'Would you like to use sway? (y,n)' INST
if [[ $INST == "Y" || $INST == "y" ]]; then
    yay -S --noconfirm sway swaybg swayidle swayimg swaylock wl-clipboard dunst pavucontrol polkit-kde-agent xorg-xwayland wayland wayland-docs wayland-protocols wayland-utils ntfs-3g gvfs gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb xdg-portal-wlr
    cp -r .config/sway ~/.config/
elif [[ $INST == "N" || $INST == "n" ]]; then
    read -n1 -rep 'Would you like to use hyprland? (y,n)' INST
    if [[ $INST == "Y" || $INST == "y" ]]; then
        yay -Rnd --noconfirm xdg-portal-wlr
        yay -S --noconfirm hyprpaper hyprland swaylock wl-clipboard dunst waybar-hyprland pavucontrol polkit-kde-agent xorg-xwayland wayland wayland-docs wayland-protocols wayland-utils ntfs-3g gvfs gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb xdg-portal-hyprland
        cp -r .config/hypr ~/.config/
    elif [[ $INST == "N" || $INST == "n" ]]; then
        read -n1 -rep 'Would you like to install other apps (google-chrome thunar vim neovim alacritty) copy config files? (y,n)' CFG
        if [[ $CFG == "Y" || $CFG == "y" ]]; then
            yay -S --noconfirm google-chrome thunar vim neovim alacritty 
            echo -e "Copying config files...\n"
            sh .config/nvim/packerinstall.sh
            cp -r .config/waybar ~/.config/
            cp -r .config/nvim ~/.config/
            cp -r .config/rofi ~/.config/
        elif [[ $CFG == "N" || $CFG == "n" ]]; then
            read -n1 -rep 'Would you like zsh to be installed' WIFI
            if [[ $WIFI == "Y" || $WIFI == "y" ]]; then
                yay -S --noconfirm zsh zsh-syntax-highlighting autojump zsh-autosuggestions
                cp -r .config/zsh ~/.config/
            elif [[ $WIFI == "N" || $WIFI == "n" ]]; then
                echo "goodbye"
            fi
        fi
    fi
fi

