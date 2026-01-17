#!/bin/bash

set -e  # Exit on error

echo "Installing packages..."
sudo apt update
sudo apt install -y $(cat packages.txt)

echo "Creating necessary directories..."
mkdir -p ~/.config/sway
mkdir -p ~/.config/waybar
mkdir -p ~/.config/kitty
mkdir -p ~/.config/mako
mkdir -p ~/.config/fuzzel
mkdir -p ~/.config/ranger
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/gtk-4.0
mkdir -p ~/.config/btop
mkdir -p ~/.config/fastfetch
mkdir -p ~/.config/lazygit

echo "Symlinking dotfiles..."
ln -sf ~/dotfiles/sway/config ~/.config/sway/config
ln -sf ~/dotfiles/waybar/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/dotfiles/waybar/modules.jsonc ~/.config/waybar/modules.jsonc
ln -sf ~/dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/mako/config ~/.config/mako/config
ln -sf ~/dotfiles/fuzzel/fuzzel.ini ~/.config/fuzzel/fuzzel.ini
ln -sf ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf ~/dotfiles/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -sf ~/dotfiles/ranger/scope.sh ~/.config/ranger/scope.sh
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
ln -sf ~/dotfiles/gtk-4.0/settings.ini ~/.config/gtk-4.0/settings.ini
ln -sf ~/dotfiles/zsh/.zshenv ~/.zshenv
ln -sf ~/dotfiles/btop/btop.conf ~/.config/btop/btop.conf
ln -sf ~/dotfiles/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
ln -sf ~/dotfiles/lazygit/config.yml ~/.config/lazygit/config.yml

# Copy scripts
cp -r ~/dotfiles/sway/scripts ~/.config/sway/
cp -r ~/dotfiles/waybar/scripts ~/.config/waybar/
chmod +x ~/dotfiles/sway/scripts/*
chmod +x ~/dotfiles/waybar/scripts/*
chmod +x ~/dotfiles/scripts/*

echo "Dotfiles installed!"
echo "Reload your shell or log out/in for changes to take effect"