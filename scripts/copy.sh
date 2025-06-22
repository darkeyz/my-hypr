
DIR=$(dirname "$(realpath $0)")

sudo mkdir -p ~/.config/waybar && sudo cp -r $DIR/../waybar/* ~/.config/waybar/

sudo cp -r $DIR/../sddm/greenleaf /usr/share/sddm/themes/ && sudo cp $DIR/../sddm/sddm.conf /etc/

sudo cp $DIR/../hyprpaper.conf ~/.config/hypr/

cp hyprlock.conf $DIR/../wallpapers/wallpaper-1.jpg ~/.config/hypr/

sudo cp -r $DIR/../rofi/themes/* /usr/share/rofi/themes/
