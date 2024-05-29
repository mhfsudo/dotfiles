#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ $SELECTED = true ]; then
  sketchybar --set $NAME background.drawing=on \
                         background.color=NULL \
                         background.border_color=$PINK \
                         background.border_width=2 \
                         label.color=$BLACK \
                         icon.color=$BLACK
else
  sketchybar --set $NAME background.drawing=off \
                         background.color=NULL \
                         background.border_color=NULL
                         label.color=$BLACK \
                         icon.color=$BLACL
fi
