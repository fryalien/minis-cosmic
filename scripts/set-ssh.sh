#!/usr/bin/env bash

set -e

PACKAGE="openssh"

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

sudo systemctl start sshd
sudo systemctl enable sshd

sudo ufw allow 22/tcp

echo "SSH - All done."
