#!/usr/bin/env bash

# Install all packages
source "./install/install.sh"

cp -r ./dotfiles/.config/* ~/.config/

# Setup qemu and virt-manager

# Utils
#yes | yay -S ${yayFlags} asusctl

# Setup software
#sudo pacman -S ${pacmanFlags} dbeaver rnote
#yay -S ${yayFlags} zen-browser-bin audacity bitwarden btop gimp spotify-launcher losslesscut-bin obsidian 


# Other software
#sudo pacman -S ${pacmanFlags} ghidra veracrypt tor openvpn 
#yay -S ${yayFlags} jcryptool burpsuite exiftool

## Greeter
sudo cp -r ./files/greetd/* /etc/greetd/
sudo systemctl enable greetd.service


