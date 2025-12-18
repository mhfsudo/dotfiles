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
echo "Good, let's update your system"
echo ""

echo "=== Systen ==="
echo ""

sudo dnf update -y
sudo dnf upgrade -y --refresh
sudo dnf clean all
sudo dnf autoremove

echo ""
echo "=== Flatpak ==="
echo ""

flatpak update
flatpak uninstall --unused

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
