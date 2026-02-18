#!/usr/bin/env bash
set -e

# Define log file
log="./install-$(date +%Y-%m-%d_%H:%M).log"
errorlog="./error-$(date +%Y-%m-%d_%H:%M).log"

# Redirect stdout and stderr to tee (both screen and file)
exec > >(tee -a "$log") 2> "$errorlog"

echo "Which script do you want to run?"
echo "1) iMac27"
echo "2) vm"
echo "3) minis-cosmic-cachy"
echo "4) minis-cosmic-eos"
echo "5) minis-xfce"
echo -n "Enter choice (1-5): "

read CHOICE

case "$CHOICE" in
    1)
        echo "Running iMac27..."
        ./scripts/start-iMac27.sh
        ;;
    2)
        echo "Running vm..."
        ./scripts/start-vm.sh
        ;;
    3)
        echo "Running minis-cosmic-cachy..."
        ./scripts/start-minis-cosmic-cachy.sh
        ;;
    4)
        echo "Running minis-cosmic-eos..."
        ./scripts/start-minis-cosmic-eos.sh
        ;;
    5)
        echo "Running minis-xfce..."
        ./scripts/start-minis-xfce.sh
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo "Done."
