#!/bin/bash

 sketchybar --add item battery right \
            --set battery background.color=NULL \
                          label.color=$PINK \
                          icon.color=$PINK \
                          background.border_color=$PINK \
                          background.border_width=1 \
                          update_freq=120 \
                          script="$PLUGIN_DIR/battery.sh"
#            --subscribe battery system_woke power_source_change
