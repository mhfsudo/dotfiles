#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  label.color=$BLACK \
                      icon.color=$BLACK \
                      icon=􀧓 \
                      update_freq=2 \
                      script="$PLUGIN_DIR/cpu.sh"
