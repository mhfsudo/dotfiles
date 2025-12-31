#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  background.color=$TEAL \
                      label.color=$DARKTRAL \
                      icon.color=$DARKTEAL \
                      icon=􀧓 \
                      update_freq=2 \
                      script="$PLUGIN_DIR/cpu.sh"
