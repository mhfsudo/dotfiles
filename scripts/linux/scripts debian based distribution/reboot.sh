#!/bin/bash

echo "=============================================================================="
echo "                                      "
echo "       __    ___  ___   ___  _______	"
echo "      /  \__/  / /  /  /  / /  ____/  "
echo "     /        / /  /__/  / /  /__     "
echo "    /  /\_/  / /  ___   / /  ___/     "
echo "   /  /  /  / /  /  /  / /  /		    "
echo "  /__/  /__/ /__/  /__/ /__/ 		    "
echo "                                      "
echo "======================================"
echo ""
echo "Good, let's make a reboot"
echo ""

#bash umount.sh			    # for second Drive with SynologyDrive
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoclean
sudo apt autoremove
#sudo pkill NSGClient       # need for my Business laptop
sudo reboot

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
