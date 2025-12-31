#!/bin/bash

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

if [ $SELECTED = true ]; then
  sketchybar --set $NAME background.drawing=on \
                         background.color=$PINK \
                         background.border_color=$PINK \
                         background.border_width=1 \
                         label.color=$BLACK \
                         icon.color=$BLACK \
                         icon.y_offset=0
else
  sketchybar --set $NAME background.drawing=off \
                         background.color=null \
                         background.border_color=null \
                         background.border_width=null \
                         label.color=$TEAL \
                         icon.color=$TEAL \
                         icon.y_offset=0
fi
