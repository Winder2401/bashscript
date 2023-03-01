#Snap
#git clone https://aur.archlinux.org/snapd.git
#cd snapd
#makepkg -si
#sudo systemctl enable --now snapd.socket
#sudo ln -s /var/lib/snapd/snap /snap
#yay

#Numix
yay -S numix-circle-icon-theme-git
#WhiteSur
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
sudo chmod +x install.sh
./install.sh
#Papirus
sudo pacman -S papirus-icon-theme
#We10X
git clone https://github.com/yeyushengfan258/We10X-icon-theme.git
cd We10X-icon-theme
sudo chmod +x install.sh
./install.sh
#Flat-Remix
snap install flat-remix
#Oranchelo
git clone https://github.com/OrancheloTeam/oranchelo-icon-theme.git 
cd oranchelo-icon-theme
./oranchelo-installer.sh
#Tela
git clone https://github.com/vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme
./install.sh
#Vimix
git clone https://github.com/vinceliuice/vimix-gtk-themes.git
cd vimix-gtk-themes
./install.sh
#Qogir
git clone https://github.com/vinceliuice/Qogir-theme.git
cd Qogir-theme
./install.sh
