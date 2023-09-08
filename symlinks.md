mkdir -p "$HOME"/.config/i3
sudo mkdir -p /usr/share/backgrounds
ln -s /home/phonkd/git/dotfiles/wm/i3/config /home/phonkd/.config/i3/config
ln -s /home/phonkd/git/dotfiles/bar/polybar /home/phonkd/.config/polybar
ln -s /home/phonkd/git/dotfiles/.zshrc ~/.zshrc
sudo cp /home/phonkd/git/Walls/images/fog-hires.png /usr/share/backgrounds/fog-hires.png #lightdm-gtk-greeter background
sudo cp /home/phonkd/git/Walls/pfp.png /usr/share/backgrounds/pfp.png
