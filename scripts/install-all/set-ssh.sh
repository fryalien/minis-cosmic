!/bin/bash

echo "SET SSH"

sudo pacman -S --noconfirm --needed openssh

sudo systemctl start sshd
sudo systemctl enable sshd

sudo ufw allow 22/tcp
