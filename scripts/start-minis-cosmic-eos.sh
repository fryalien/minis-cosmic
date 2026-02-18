#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL ALL #####"

./scripts/install-all/install-all.sh

######################################################################################

echo "##### INSTALL CACHY #####"

./scripts/minis-cosmic/eos-apps.sh

######################################################################################

echo "##### SETUP PAM #####"

./scripts/cosmic-pam-setup.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./scripts/minis-flatpak/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./scripts/minis-flatpak/flatpak-config.sh

######################################################################################

echo "##### SETUP COSMIC #####"

./scripts/minis-cosmic/restore-cosmic.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
