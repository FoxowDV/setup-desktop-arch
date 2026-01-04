#!/usr/bin/env bash

# Dot files
path=./dotfiles/.config/

rm -r ${path}/*
cp -r ~/.config/fish ${path}
cp -r ~/.config/hypr ${path}
cp -r ~/.config/kitty ${path}
cp -r ~/.config/fastfetch/ ${path}
cp -r ~/.config/nvim/ ${path}
cp -r ~/.config/waybar ${path}

# System config
