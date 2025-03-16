#!/bin/zsh

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

networksetup -setsecurewebproxystate "Wi-fi" off

echo "=== Brew ==="
echo ""

brew update
brew upgrade

echo ""
echo "=== Krew ==="
echo ""

kubectl krew update
kubectl krew upgrade

echo ""
echo "=== App Store ==="
echo ""

mas outdated
mas upgrade

echo ""
echo "=== Mac ==="
echo ""

softwareupdate -l

echo ""
echo "Good, we're done. See you soon"
echo ""

sudo shutdown -r now

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
