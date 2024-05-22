#!/bin/bash

sketchybar --add item volume right \
           --set volume label.color=$ITEM_BG_COLOR \
                        script="$PLUGIN_DIR/volume.sh" \
                        icon.color=$ITEM_BG_COLOR \
           --subscribe volume volume_change \
