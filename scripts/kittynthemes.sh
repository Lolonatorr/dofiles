echo "----Helper for installing kitty and thenes in arch...----"
sudo pacman -S kitty
sudo mv /usr/share/doc/kitty/kitty.conf ~/.config/kitty/kitty.conf

#git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
defpath=$(realpath ~/.config/kitty/kitty-themes)
counter=1
themes_realpaths=()
if [ -d "$defpath" ]
then
    echo "found themes git repo directory"
else
    echo "kitty-themes not found"
    echo "specify thet kitty-themes folder (git repo) or type DL if you want to download it"
    read git_theme_folder
    if [ -d "$git_theme_folder" ]
    then 
        echo "found it"
    else
        echo "couldnt find... cloning into home"
        git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
    fi
fi

for i in $(ls ~/.config/kitty/kitty-themes/themes)
do
    themes[$counter]=$i
    echo "["$counter"]"  $i
    ((counter++))
done
echo "select a theme (number)"
read chosen_theme_number
echo "creating symlink"
cd ~/.config/kitty
ln -sf ./kitty-themes/themes/${themes[$chosen_theme_number]} ~/.config/kitty/theme.conf
#theme_name=/kitty-themes/themes/${themes[$chosen_theme_number]}

echo "done"