#!/usr/bin/env bash

set -e

PACKAGE="ghostty"

if command -v apt >/dev/null 2>&1; then
    echo "Detected apt (Ubuntu)"
    sudo apt update
    sudo apt install -y "$PACKAGE"

elif command -v pacman >/dev/null 2>&1; then
    echo "Detected pacman (Arch)"
    sudo pacman -Sy --noconfirm --needed "$PACKAGE"

else
    echo "Error: Supported package manager not found (apt or pacman)."
    exit 1
fi


echo "Create theme dir"
mkdir -pv ~/.config/micro/colorschemes

echo "Downloading Micro theme"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/themes-micro/catppuccin-mocha.micro \
-o ~/.config/micro/colorschemes/catppuccin-mocha.micro

echo "Create settings.json "
echo '{ "colorscheme": "catppuccin-mocha" }' > ~/.config/micro/settings.json

echo "MICRO THEME - All done."
