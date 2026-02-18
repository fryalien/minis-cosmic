#!/bin/bash

in="sudo pacman -S --noconfirm --needed"

echo "Install apps"

$in fish
$in flatpak
$in ufw gufw

$in bat
$in btop
$in dos2unix
$in eza
$in fastfetch
$in fd
$in ffmpeg
$in fish
$in fzf
$in ghostty
$in git
$in gparted
$in gzip
$in imagemagick
$in kbackup
$in micro
$in ncdu gdu
$in neovim
$in p7zip
$in partitionmanager
$in rate-mirrors
$in ripgrep
$in rsync
$in tldr
$in tmux
$in tree
$in unace
$in unrar
$in unzip
$in yt-dlp
$in zoxide

$in wireshark-qt
sudo usermod -aG wireshark $USER
