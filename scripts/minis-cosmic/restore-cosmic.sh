#!/bin/bash

cp -rv ./cosmic-backup/cosmic ~/.config/
cp -rv ./cosmic-backup/icons ~/.icons/

dconf load / < ./cosmic-backup/dconf-full-backup.ini


# Reset cosmic
#rm -rf ~/.config/cosmic ~/.local/share/cosmic
