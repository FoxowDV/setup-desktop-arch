#!/usr/bin/env bash


# Setup desktop
sudo pacman -S --noconfirm hyprland dunst kitty dolphin rofi xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim uwsm ttf-hack-nerd

cp -r ./dotfiles/.config/ ~/.config/


# Setup system

# Setup packages

sudo pacman -S --noconfirm ttf-hack-nerd


# Setup config files
