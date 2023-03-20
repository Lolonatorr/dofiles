echo "gtk theme installer V0.1"
echo "scanning for themes folders..."
theme_folder=""
if [ -d "~/.themes" ];
then
    echo "themes folder found in ~/.themes" 
    theme_folder="~/.themes"

else
    echo "themes folder not in ~/.themes"
    if [ -d "/usr/share/themes" ]
    then
    echo "themes folder found in /usr/share/themes"
    theme_folder="/usr/share/themes"
    else
        echo "themes folder not found..."
        echo "enter the path of the themes folder:"
        read -e theme_folder

    fi
fi

#done checking themes destination
#starting theme copying
echo "enter the path of the theme/s you want to install:"
read -e desired_theme
if [ -d "$desired_theme" ]
then
    sudo cp -r $desired_theme $theme_folder
    echo "done"
    lxappearance
else
    echo "This did not work, check if you specified a folder and not a zip file!"
fi