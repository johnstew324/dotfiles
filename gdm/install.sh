#!/bin/bash
# Install GDM theme

echo "Installing GDM theme..."

# Backup original
sudo cp /usr/share/gnome-shell/gnome-shell-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource.backup

# Compile new theme
cd ~/dotfiles/gdm
glib-compile-resources gdm-theme.gresource.xml

# Install
sudo cp gdm-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource

# Set background - simpler method
sudo cp ~/dotfiles/wallpapers/yosemite_night_peak.jpg /usr/share/backgrounds/gdm-background.jpg
sudo update-alternatives --install /usr/share/backgrounds/gnome-default-background gnome-default-background /usr/share/backgrounds/gdm-background.jpg 100

echo "Done! Restart GDM to see changes: sudo systemctl restart gdm"