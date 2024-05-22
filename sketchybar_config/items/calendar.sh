#!/bin/bash

sketchybar --add item calendar right \
           --set calendar label.color=$ITEM_BG_COLOR \
                          icon=􀧞  \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh" \
                          icon.color=$ITEM_BG_COLOR
