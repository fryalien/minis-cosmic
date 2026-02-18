#!/bin/bash

echo "Updating system..."
sudo pacman -Syu --noconfirm

# Detect current kernel
KERNEL=$(uname -r)
echo "Current kernel version: $KERNEL"

# Determine host modules package
if [[ "$KERNEL" == *"lts"* ]]; then
    HOST_MODULES="virtualbox-host-modules-lts"
else
    HOST_MODULES="virtualbox-host-modules-arch"
fi

echo "Installing VirtualBox and host modules: $HOST_MODULES"
sudo pacman -S --noconfirm  --needed virtualbox $HOST_MODULES linux-headers

echo "Loading VirtualBox kernel modules..."
sudo modprobe vboxdrv
sudo modprobe vboxnetflt
sudo modprobe vboxnetadp

echo "Adding $USER to vboxusers group..."
sudo usermod -aG vboxusers $USER

echo "Installation complete!"
echo "Please log out and log back in for group changes to take effect."
echo "Verify VirtualBox installation with: VBoxManage --version"
