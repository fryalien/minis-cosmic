#!/usr/bin/env bash

set -e

PACKAGE="fish"

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

echo "Create config dir"
mkdir -v ~/.config/fish

echo "Download config file"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/fish/config.fish \
-o ~/.config/fish/config.fish

echo "Set fish shell default for my user"
sudo usermod -s /usr/bin/fish $USER

echo "FISH - All done."
