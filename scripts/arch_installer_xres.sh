#!/bin/bash
sudo pacman -S xorg-xinit

cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo "xrdb ~/.Xresources" >> .xinitrc

