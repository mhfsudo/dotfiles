#!/bin/bash

sketchybar --add item calendar right \
           --set calendar background.color=$PINK \
           label.color=$BLACK \
           icon.color=$BLACK \
           icon=􀧞  \
           background.border_color=$PINK \
           background.border_width=1 \
           update_freq=30 \
           script="$PLUGIN_DIR/calendar.sh"
