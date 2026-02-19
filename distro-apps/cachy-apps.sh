#!/bin/bash

in="sudo pacman -S --needed --noconfirm"
aur="paru -S --needed --noconfirm"
rmp="sudo pacman -Rns --noconfirm"


echo "SETUP YAY"
$in yay
echo "" | yay --save --answerdiff None --answerclean None --removemake None  

echo "AUR"
$aur ttf-jetbrains-mono-nerd
$aur ttf-hack-nerd
$aur ttf-ms-fonts
$aur sublime-text-4
$aur catppuccin-cursors-latte
$aur catppuccin-cursors-frappe
$aur catppuccin-cursors-macchiato
$aur catppuccin-cursors-mocha
$aur megasync-bin
$aur freefilesync-bin

echo "CACHY"
$in ristretto
$in xdg-desktop-portal-gtk

# needed fot github desktop
sudo pacman -S gnome-keyring
systemctl --user enable --now gnome-keyring-daemon.service

echo "All done."
