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

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null    
sudo systemctl enable resolvconf
sudo systemctl start resolvconf
sudo /etc/init.d/networking restart  

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="               
