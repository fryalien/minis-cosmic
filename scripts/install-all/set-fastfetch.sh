#!/bin/bash

echo "Install"
sudo pacman -S --noconfirm --needed fastfetch

echo "Make config dir"
mkdir -v ~/.config/fastfetch

echo "Copy config"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/fastfetch/config-simple.jsonc \
-o ~/.config/fastfetch/config.jsonc
