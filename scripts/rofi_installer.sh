echo "----rofi_installer V0.1----"
sudo pacman -S rofi
echo "do you want to install newmanls's theme collection?"
read usrchoice
check_dir_existence=~/rofi-themes-collection/
if [[ "$usrchoice" == "y"  ]]
then
    if [ -d "$check_dir_existence" ];
    then
       echo "found directory!"
    else
        git clone https://github.com/lr-tech/rofi-themes-collection.git
    fi
    
    cd ~
    if [ -d "~/.local/share/rofi/themes" ]
    then
        echo "found rofi themes directory"
    else
        mkdir -p ~/.local/share/rofi/themes
    fi
    cd rofi-themes-collection/
    for file in themes/*.rasi
    do
        echo $file
        sudo cp $file ~/.local/share/rofi/themes/
    done
    #cp themes/ ~/.local/share/rofi/themes/
fi