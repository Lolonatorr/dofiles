echo "Free System Bloater v0.1"
pacman_pkgs=(
discord
alacritty    
obsidian
btop
bat
neovim
firefox
flameshot
pavucontrol
zsh
)
pacman_cmd="sudo pacman -S --noconfirm "

aur_pkgs=(
cava
visual-studio-code-bin
spotify
)
yay_cmd="yay -S --noconfirm "

echo "You are about to install the following applications:"
echo "-----------Pacman-----------"
for i in "${pacman_pkgs[@]}"
do
    echo "$i"
done 
echo "-----------AUR-----------"
for i in "${aur_pkgs[@]}"
do
    echo "$i"S
done 


echo "installing..."
for i in "${pacman_pkgs[@]}"
do
    $pacman_cmd $i
done 
echo "-----------AUR-----------"
for i in "${aur_pkgs[@]}"
do
    $yay_cmd $i
done



# DPI

read -p "Do you want to set the dpi to 125%? (yes/no)" answer
case ${answer:0:1} in
	y|Y )
	echo "running dpi change"
	chmod +x ~/git/dotfiles/scripts/arch_installer_xres.sh
	/bin/bash ~/git/dotfiles/scripts/arch_installer_xres.sh
	read -p "what dpi do you want to set (120=125% scaling)" usrdpi
	echo "Xft.dpi: "$usrdpi >> .Xresources
	;;
	n|N )
	;;
	* )
	echo "wtf"
	;;
esac

## Other script section
#
read -p "Do you want to run the complete i3 setup script? (yes/no)" yn

case $yn in
	yes ) echo proceeding;;
	no ) echo skipping:
	    exit;;
	* ) echo wtf dude;
	    exit 1;;
esac

sudo pacman -S i3-wm

sudo chmod +x ~/git/dotfiles/wm/i3/i3quick.sh
/bin/bash ~/git/dotfiles/wm/i3/i3quick.sh


