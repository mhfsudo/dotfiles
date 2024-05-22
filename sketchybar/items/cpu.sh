#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  label.color=$ITEM_BG_COLOR \
                      update_freq=2 \
                      icon=􀧓  \
                      script="$PLUGIN_DIR/cpu.sh" \
                      icon.color=$ITEM_BG_COLOR
