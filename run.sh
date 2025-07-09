#!/usr/bin/env bash


# Setup yay
sudo pacman -S --needed git base-devel && cd .. &&git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Setup desktop
cd ../setup-desktop-arch/
sudo pacman -S --noconfirm hyprland dunst kitty rofi xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim uwsm ttf-hack-nerd fish waybar neovim greetd ttf-hack-nerd
cp -r ./dotfiles/.config/* ~/.config/

# Setup tools
yay -S meson ninja gcc clang cmake curl gdb go grep make nams yazi hyprshot losslesscut-bin


# Nvidia drivers


# Setup software
yay -S zen-browser-bin audacity asusctl bitwarden btop gimp spotify-launcher

## Greeter
sudo cp -r ./files/greetd/* /etc/greetd/
sudo systemctl enable greetd.service


