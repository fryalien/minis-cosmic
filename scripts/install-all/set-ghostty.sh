#!/bin/bash

echo "Create config dir"
mkdir -pv ~/.config/ghostty

echo "Download config"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/ghostty/config \
-o ~/.config/ghostty/config
