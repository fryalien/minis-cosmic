#!/bin/bash

echo "Create theme dir"
mkdir -pv ~/.config/micro/colorschemes

echo "Downloading Micro theme"
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/themes-micro/catppuccin-mocha.micro \
-o ~/.config/micro/colorschemes/catppuccin-mocha.micro

echo "Create settings.json "
echo '{ "colorscheme": "catppuccin-mocha" }' > ~/.config/micro/settings.json
