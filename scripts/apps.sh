#!/bin/sh

DIR=$(dirname "$(realpath $0)")

# Browser(brave)
# Set "preferred Ozone platform" to wayland in "brave://flags"
yay -Sy --needed brave-bin

# Editor
sudo pacman -S --needed neovim

# File manager
sudo pacman -S --needed yazi


# Terminal 
sudo pacman -S --needed kitty && sudo cp $DIR/../kitty.conf ~/.config/kitty/

# Lutris
# sudo pacman -S --needed lutris
