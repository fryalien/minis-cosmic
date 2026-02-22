#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL ALL #####"

./scripts/sset-arch/install-all.sh

######################################################################################

echo "##### INSTALL CACHY #####"

./scripts/distro-apps/cachy-apps.sh

######################################################################################

echo "##### SETUP PAM #####"

./scripts/distro-apps/cosmic-pam-setup.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./scripts/flatpak/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./scripts/flatpak/flatpak-config.sh

######################################################################################

echo "##### SETUP COSMIC #####"

./scripts/cosmic-config/restore-cosmic.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
