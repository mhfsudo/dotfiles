#!/bin/bash

# Right of the notch --add item media e
# icon=􀑪

sketchybar --add item media right \
           --set media label.color=$BLACK \
                       label.max_chars=26 \
                       icon.padding_left=10 \
                       scroll_texts=on \
                       icon= \
                       icon.color=$GREEN \
                       background.drawing=on \
                       background.color=NULL \
                       background.border_color=$GREEN \
                       background.border_width=2 \
                       blur_radius=20 \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
