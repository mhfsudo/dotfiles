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
echo "Good, let us install some programs"
echo "first we install some required components and update the system"
echo ""

sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoclean
sudo apt autoremove

echo "======================================"
echo "Git (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo apt install git
		echo ""
		echo "Git username?"
		read answer
		git config --global user.name "$answer"
		echo ""
		echo "Git mailaddress?"
		read answer
		git config --gloabl user.email "$answer"
		echo ""
		echo "Git Text Editor? (z.B. vim, nano, code, atom)"
		read answer
		git config --global core.editor "$answer"
		echo ""
		git config --global --list
		;;
	n) echo "wird nicht installiert"
		;;
esac

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
