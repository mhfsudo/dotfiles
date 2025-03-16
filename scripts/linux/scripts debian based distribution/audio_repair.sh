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

pactl set-default-sink alsa_output.usb-Logitech_Zone_Wireless_Plus_2048LZD135W8-00.analog-stereo
pactl set-default-source  alsa_input.usb-Logitech_Zone_Wireless_Plus_2048LZD135W8-00.mono-fallback

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="               
