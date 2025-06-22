#!/bin/sh

sudo pacman -Sy

# yay
# enable multilib in /etc/pacman.conf
# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && rm -rf yay    

# Brightness
sudo pacman -S --needed brightnessctl 

# WIFI
sudo pacman -S --needed networkmanager network-manager-applet

# Bluetooth
sudo pacman -S --needed  bluez bluez-utils blueman

# Critical for hyprland
sudo pacman -S --needed pipewire wireplumber xdg-desktop-portal-hyprland qt5-wayland qt6-wayland qt6ct lxappearance adw-gtk-theme swaync libnotify

# Hyprland
# test with sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/greenleaf
sudo pacman -S --needed waybar ttf-font-awesome \
   hyprpaper
   sddm
yay -S --needed hypridle hyprlock rofi-wayland
