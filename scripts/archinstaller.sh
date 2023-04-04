echo "Free System Bloater v0.1"
#sudo pacman -S -y discord alacritty
#yay -S cava visual-studio-code-bin snapd
#sudo systemctl start snapd
#sudo snap install spotify
pacman_pkgs=(
discord
alacritty    
obsidian
)
pacman_cmd="sudo pacman -S "

aur_pkgs=(
cava
visual-studio-code-bin
kwin-bismuth
snapd
icaclient
)
yay_cmd="yay -S "

snap_pkgs=(
spotify    
)
snap_cmd="sudo snap install"

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
echo "-----------SNAP-----------"
for i in "${snap_pkgs[@]}"
do
    echo "$i"
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
echo "-----------SNAP-----------"
for i in "${snap_pkgs[@]}"
do
    $snap_cmd $i
done 