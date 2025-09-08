#!/bin/zsh

# Initialize SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

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

echo "=== Brew ==="
echo ""

brew update
brew upgrade
brew cleanup

echo ""
echo "=== sdkman ==="
echo ""

sdk update
sdk upgrade
sdk selfupdate

echo ""
echo "=== Cursor ==="
echo ""

code --update-extensions

echo ""
echo "=== Code ==="
echo ""

code --update-extensions

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
echo "Good, we're done"
echo ""
echo "=============================================================================="

