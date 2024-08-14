#!/bin/bash

sketchybar --add item weather right \
           --set weather background.color=NULL \
           label.color=$TEAL \
           icon=󰖐 \
           icon.color=$TEAL \
           script="$PLUGIN_DIR/weather.sh" \
           background.border_color=$TEAL \
           background.border_width=1 \
           update_freq=1500 \
           --subscribe weather mouse.clicked
