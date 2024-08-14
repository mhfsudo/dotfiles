#!/bin/bash

sketchybar --add item volume right \
           --set volume background.color=NULL \
                        label.color=$PINK \
                        script="$PLUGIN_DIR/volume.sh" \
                        icon.color=$PINK \
                        background.border_color=$PINK \
                        background.border_width=1 \
           --subscribe volume volume_change \

# volume_slider=(
#   script="$PLUGIN_DIR/volume.sh"
#   updates=on
#   label.drawing=off
#   icon.drawing=off
#   slider.highlight_color=$BLUE
#   slider.background.height=5
#   slider.background.corner_radius=3
#   slider.background.color=$BACKGROUND_2
#   slider.knob=􀀁
#   slider.knob.drawing=on
# )
#
# volume_icon=(
#   click_script="$PLUGIN_DIR/volume_click.sh"
#   padding_left=10
#   icon=$VOLUME_100
#   icon.width=0
#   icon.align=left
#   icon.color=$GREY
#   icon.font="$FONT:Regular:14.0"
#   label.width=25
#   label.align=left
#   label.font="$FONT:Regular:14.0"
# )
#
# status_bracket=(
#   background.color=$BACKGROUND_1
#   background.border_color=$BACKGROUND_2
# )
#
# sketchybar --add slider volume right            \
#            --set volume "${volume_slider[@]}"   \
#            --subscribe volume volume_change     \
#                               mouse.clicked     \
#            --add item volume_icon right         \
#            --set volume_icon "${volume_icon[@]}"
#
# sketchybar --add bracket status brew github.bell wifi volume_icon \
#            --set status "${status_bracket[@]}"
