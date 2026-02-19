#!/bin/bash

sudo pacman -S --noconfirm --needed gnome-keyring seahorse

echo "Modifying /etc/pam.d/login"
sudo tee -a /etc/pam.d/login <<'EOF'
# my-stuff
auth optional pam_gnome_keyring.so
session optional pam_gnome_keyring.so auto_start
EOF
