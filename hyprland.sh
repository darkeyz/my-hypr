#!/bin/sh

# start in ~
cd ~
sudo pacman -Sy

# yay
# enable multilib in /etc/pacman.conf
# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd ~ && rm -rf yay    

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
sudo pacman -S --needed xdg-desktop-portal-hyprland qt5-wayland qt6-wayland	

# waybar
sudo pacman -S --needed waybar 
