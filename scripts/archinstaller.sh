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
)
pacman_cmd="sudo pacman -S --noconfirm "

aur_pkgs=(
cava
visual-studio-code-bin
kwin-bismuth
snapd
icaclient
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
