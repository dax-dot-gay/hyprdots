#!/bin/bash

# Install rust as a dependency for paru, and setup rustup
sudo pacman -S --needed rustup
rustup default stable

# Setup paru as the AUR helper
cd ~
rm -rf ./paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Install required packages
cd ~/.config/yolk
paru -S --needed --skipreview - < resources/packages

# Set shell to zsh
chsh --shell $(which zsh) $USER

sudo systemctl enable --now bluetooth
systemctl --user enable --now ulauncher