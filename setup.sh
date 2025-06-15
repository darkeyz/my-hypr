#!/bin/sh

# start in ~
sudo pacman -Sy

# yay
# enable multilib in /etc/pacman.conf
# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && rm -rf yay    

# Browser(brave)
# Set "preferred Ozone platform" to wayland in "brave://flags"
yay -Sy --needed brave-bin

# Brightness
sudo pacman -S --needed brightnessctl 

# WIFI
sudo pacman -S --needed networkmanager && sudo systemctl enable --now NetworkManager.service

# Bluetooth
sudo pacman -S --needed  bluez bluez-utils bluetui && systemctl enable --now bluetooth.service  

# Critical for hyprland
sudo pacman -S --needed pipewire wireplumber xdg-desktop-portal-hyprland qt5-wayland qt6-wayland	

# Rofi
sudo pacman -S --needed rofi-wayland && sudo cp -r rofi/themes/* /usr/share/rofi/themes/

# waybar
# cp -r /etc/xdg/waybar/* ~/.config/waybar
sudo pacman -S --needed waybar ttf-font-awesome && cp -r waybar/* ~/.config/waybar/


# Asus
yay -S --needed asusctl
