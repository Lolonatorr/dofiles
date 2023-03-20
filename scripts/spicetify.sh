echo "arch only!! uses aur"
#yay -S spicetify-cli
prefs_path=
spicetify_config_path="~/.config/spicetify/config-xpui.ini"
[ -f ~/.config/spotify/prefs ] && prefs_path=~/.config/spotify/prefs && echo "found prefs in $prefs_path" || echo "couldnt find prefs"
if [[ -z $prefs_path ]]
then
    echo "enter prefs path:"
    read -e prefs_path
fi
#edit_config_cmd="sudo sed -i s/^prefs_path=.*/prefs_path=$prefs_path/ $spicetify_config_path"
            #   sudo sed -i s/^Current=.*/Current=$theme_directory_name/ /etc/sddm.conf"
if [ -f ~/.config/spicetify/config-xpui.ini ]
then
    spicetify_config_path=~/.config/spicetify/config-xpui.ini
    echo "found spicetify config"
else
    echo "couldn't find the spicetify config file (config-xpui.ini)"
    echo "enter the path of it:"
    read -e spicetify_config_path
fi
spicetify_config_path=$(realpath $spicetify_config_path)
prefs_path=$(realpath $prefs_path)
edit_config_cmd="spicetify config prefs_path $prefs_path"   
$edit_config_cmd
spicetify apply
#prefs_path              = /home/elis/.config/spotify/prefs
