#!/bin/bash

sketchybar --add item battery right \
           --set battery label.color=$ITEM_BG_COLOR \
                         update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                         icon.color=$ITEM_BG_COLOR \
           --subscribe battery system_woke power_source_change
