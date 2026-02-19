#!/bin/bash

cp -rv ./cosmic-config/cosmic ~/.config/
cp -rv ./cosmic-config/icons ~/.icons/

dconf load / < ./cosmic-config/dconf-full-backup.ini


# Reset cosmic
#rm -rf ~/.config/cosmic ~/.local/share/cosmic
