#!/bin/bash

in="sudo pacman -S --noconfirm --needed"
aur="yay -S --noconfirm --needed"
rmp="sudo pacman -Rns --noconfirm"

# yay not asking anoying questions
echo "" | yay --save --answerdiff None --answerclean None --removemake None   

echo "Remove apps"
$rmp firefox
$rmp firewalld
$rmp meld
$rmp ex-vi-compat

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
$aur paru