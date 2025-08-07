#!/usr/bin/env bash


# Setup yay
sudo pacman -S --noconfirm --needed git base-devel && cd .. &&git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Setup desktop
cd ../setup-desktop-arch/
sudo pacman -S --noconfirm hyprland dunst kitty rofi xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent grim uwsm ttf-hack-nerd fish waybar neovim greetd ttf-hack-nerd
cp -r ./dotfiles/.config/* ~/.config/

# Setup tools
yay -S meson ninja gcc clang cmake curl gdb go grep make nams yazi hyprshot sshfs


# Nvidia drivers

# Setup qemu and virt-manager

# Setup software
sudo pacman -S --noconfirm ghidra dbeaver

yay -S zen-browser-bin audacity asusctl bitwarden btop gimp spotify-launcher losslesscut-bin obsidian 

## Greeter
sudo cp -r ./files/greetd/* /etc/greetd/
sudo systemctl enable greetd.service


