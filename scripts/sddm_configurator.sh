echo "----sddm_theme_configurator_V0.1----"
theme_folder_path=""
if [ -d "/usr/share/sddm/themes" ]
then
    theme_folder_path="/usr/share/sddm/themes"
    echo "SDDM Theme folder found in $theme_folder_path"
else
    echo "SDDM Theme folder not found..."
    echo "Enter the path to the SDDM Theme Folder"
    read theme_folder_path
fi
echo "enter the path of your desired theme"
read  -e desired_theme
echo "copying theme"
sudo cp -r $desired_theme $theme_folder_path
echo "trying to edit sddm.conf"
theme_directory_name=$(basename "$desired_theme")
edit_config_cmd="sudo sed -i s/^Current=.*/Current=$theme_directory_name/ /etc/sddm.conf"
$edit_config_cmd
echo $(cat /etc/sddm.conf)
echo "Done"

echo "Do you want to also change the sddm theme background?  (y/n)"
read bg_choice
if [[ "$bg_choice" == "y" || "$bg_choice" == "Y" ]]
then
    echo "enter the path to the wallpaper:"
    read -e wallpaper
    wallpaper_name=$(basename "$wallpaper")
    cp_bg="sudo cp $wallpaper $theme_folder_path/$theme_directory_name/Background.jpg"
    $cp_bg
    $edit_config_bg_cmd
fi