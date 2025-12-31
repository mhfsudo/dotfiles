#!/bin/bash

sketchybar --add item front_app left \
           --set front_app background.color=$PURPLE \
           background.border_color=$PURPLE \
           background.border_width=1 \
           icon.background.drawing=off \
           icon.font="sketchybar-app-font:Regular:16.0" \
           icon.y_offset=1 \
           icon.color=$BLACK \
           label.color=$BLACK \
           script="$PLUGIN_DIR/front_app.sh" \
           click_script="open -a 'Mission Control'" \
           --subscribe front_app front_app_switched
