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

echo "Create config dir"
mkdir -pv ~/.config/ghostty

echo "Download config"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/ghostty/config \
-o ~/.config/ghostty/config


echo "GHOSTTY - All done."
