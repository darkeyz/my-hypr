#!/bin/sh

# start in ~
sudo pacman -Sy

# yay
# enable multilib in /etc/pacman.conf
# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && rm -rf yay    

# Brightness
sudo pacman -S --needed brightnessctl 

# WIFI
sudo pacman -S --needed networkmanager network-manager-applet && sudo systemctl enable --now NetworkManager.service

# Bluetooth
sudo pacman -S --needed  bluez bluez-utils bluetui && systemctl enable --now bluetooth.service  

# Critical for hyprland
sudo pacman -S --needed pipewire wireplumber xdg-desktop-portal-hyprland qt5-wayland qt6-wayland	

# Rofi
sudo pacman -S --needed rofi-wayland && sudo cp -r rofi/themes/* /usr/share/rofi/themes/

# waybar
# cp -r /etc/xdg/waybar/* ~/.config/waybar
sudo pacman -S --needed waybar ttf-font-awesome && cp -r waybar/* ~/.config/waybar/

# hyprlock
sudo pacman -S --needed hyprlock && cp hyprlock.conf avatar.png wallpapers/wallpaper-1.jpg ~/.config/hypr/

# sddm
# test with sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/greenleaf 
yay -S --needed sddm && sudo cp -r sddm/greenleaf /usr/share/sddm/themes/ && sudo cp sddm/sddm.conf /etc/

# hyprpaper
sudo pacman -S --needed hyprpaper && sudo cp hyprpaper.conf ~/.config/hypr/

# swaync
sudo pacman -S --needed swaync libnotify
