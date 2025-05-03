#!/usr/bin/env bash


# Setup desktop
sudo pacman -S --noconfirm hyprland dunst kitty dolphin rofi xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim uwsm ttf-hack-nerd fish waybar neovim greetd

cp -r ./dotfiles/.config/* ~/.config/

sudo cp -r ./files/greetd/* /etc/greetd/


# Setup system

# Setup packages

sudo pacman -S --noconfirm ttf-hack-nerd


# Setup config files
