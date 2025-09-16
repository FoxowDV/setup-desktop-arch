#!/usr/bin/env bash
# Some of the packages should be installed by the archinstall config file, it just skips, does not matter
pacmanFlags='--noconfirm --needed'
yayFlags='-q --save --answerclean N --answerdiff N --cleanmenu=false --diffmenu=false --norebuild'

# Setup yay
sudo pacman -S ${pacmanFlags} git base-devel && cd .. &&git clone https://aur.archlinux.org/yay.git && cd yay && yes | makepkg -si


# Setup desktop hyprland
cd ../setup-desktop-arch/
sudo pacman -S ${pacmanFlags} hyprland dunst kitty rofi xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim uwsm fish waybar neovim greetd pavucontrol
yes | yay -S ${yayFlags} yazi hyprshot
cp -r ./dotfiles/.config/* ~/.config/

# Fonts
sudo pacman -S ${pacmanFlags} ttf-ubuntu-nerd noto-fonts
yes | yay -S ${yayFlags} ttf-icomoon-feather

# Setup tools
sudo pacman -S ${pacmanFlags} traceroute iputils nmap
yes | yay -S ${yayFlags} meson ninja gcc clang cmake curl gdb go grep make nams sshfs


# Nvidia drivers


# Setup qemu and virt-manager

# Utils
#yes | yay -S ${yayFlags} asusctl

# Setup software
sudo pacman -S ${pacmanFlags} dbeaver rnote
yay -S ${yayFlags} zen-browser-bin audacity bitwarden btop gimp spotify-launcher losslesscut-bin obsidian 


# Other software
sudo pacman -S ${pacmanFlags} ghidra  veracrypt tor openvpn 
yay -S ${yayFlags} jcryptool burpsuite exiftool

## Greeter
sudo cp -r ./files/greetd/* /etc/greetd/
sudo systemctl enable greetd.service


