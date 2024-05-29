#!/bin/bash

sketchybar --add item volume right \
           --set volume label.color=$BLACK \
                        script="$PLUGIN_DIR/volume.sh" \
                        icon.color=$BLACK \
           --subscribe volume volume_change \
