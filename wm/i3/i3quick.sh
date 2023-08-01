#!/bin/bash
---Polybar, I3 quick setup---
echo "dotfiles must be cloned to ~/git"

packages=(
ttf-nerd-fonts-symbols
alacritty
dmenu
polybar
nitrogen
ttf-nerd-fonts-symbols-mono
ttf-iosevka-nerd
rofi
i3-sensible-terminal
nitrogen
lightdm
lightdm-gtk-greeter
picom
)

echo "installing necessary packages and fonts"

for i in "${packages[@]}"
do
	sudo pacman -S $i --noconfirm
done

echo "copying config file"
cp -r ~/git/dotfiles/bar/polybar/colorblocks ~/.config/polybar/

sudo systemctl enable --now lightdm
