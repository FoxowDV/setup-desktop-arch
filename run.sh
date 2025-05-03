#!/usr/bin/env bash


# Setup yay
sudo pacman -S --noconfirm --needed git base-devel
cd ..
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../setup-desktop-arch/

# Setup desktop
sudo pacman -S --noconfirm hyprland dunst kitty dolphin rofi xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim uwsm ttf-hack-nerd fish waybar neovim greetd ttf-hack-nerd
cp -r ./dotfiles/.config/* ~/.config/


## Greeter
sudo cp -r ./files/greetd/* /etc/greetd/
sudo systemctl enable greetd.service


