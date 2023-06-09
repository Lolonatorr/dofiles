#!/bin/bash
yaycmd="yay -S --noconfirm "
pkgs=(
swaylock-effects
)
for i in "${pkgs[@]}"
do 
	$yaycmd $i
done
