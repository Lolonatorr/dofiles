#!/bin/bash
packages=(
wl-clipboard
grim
slrup
grimshot
)
paccmd="yay -S --noconfirm"
for i in "${packages[@]}"
do
$paccmd $i
done
