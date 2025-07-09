#!/usr/bin/env bash

path=./dotfiles/.config/

cp -r ~/.config/fish ${path}
cp -r /home/wallace/.config/hypr ${path}
cp -r /home/wallace/.config/kitty ${path}
cp -r /home/wallace/.config/fastfetch/ ${path}
cp -r /home/wallace/.config/nvim/init.lua ${path}/nvim/
cp -r /home/wallace/.config/waybar ${path}
cp -r /home/wallace/.config/yazi ${path}
cp -r /home/wallace/.config/rofi ${path}


