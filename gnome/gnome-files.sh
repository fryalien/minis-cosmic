#!/bin/bash

set -e

in="sudo pacman -S --noconfirm --needed"
aur="yay -S --noconfirm --needed"

$in gnome-tweaks
$in extensions-manager

#GNOME EXTENSIONS
Dash2Dock Animated - icedman
User themes
user themesX
Alphabetical App Grid
Blur my Shell
Caffeine
AppIndicator and KStatusNotifierItem Support
Just Perfection


$aur yaru-icon-theme
$aut ttf-ubuntu-font-family
$aur gtk-engine-murrine

