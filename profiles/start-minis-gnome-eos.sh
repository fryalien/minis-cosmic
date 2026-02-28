#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL ALL #####"

./set-arch/install-all.sh

######################################################################################

echo "##### INSTALL EOS #####"

./distro-apps/eos-apps.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./flatpak/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./flatpak/flatpak-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
