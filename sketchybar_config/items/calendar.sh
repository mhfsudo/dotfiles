#!/bin/bash

sketchybar --add item calendar right \
           --set calendar label.color=$BLACK \
                          icon.color=$BLACK \
                          icon=􀧞  \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh"
