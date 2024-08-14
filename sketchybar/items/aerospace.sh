#!/bin/bash

sketchybar --add event aerospace_workspace_change

for m in $(aerospace list-monitors | awk '{print $1}'); do
  for i in $(aerospace list-workspaces --monitor $m); do
    sid=$i

    sketchybar --add space space.$sid left \
               --subscribe space.$sid aerospace_workspace_change \
               --set space.$sid "${space[@]}" \
               space="$sid" \
               icon="$sid" \
               icon.color=$TEAL \
               icon.highlight_color=$BLACK \
               icon.padding_left=10 \
               icon.padding_right=0 \
               icon.y_offset=1 \
               display=$m \
               padding_left=2 \
               padding_right=2 \
               label.padding_right=20 \
               label.color=$TEAL \
               label.highlight_color=$BLACK \
               label.font="sketchybar-app-font:Regular:16.0" \
               label.y_offset=0 \
               background.color=$BACKGROUND_1 \
               background.border_color=$BACKGROUND_2 \
               script="$PLUGIN_DIR/aerospace_space.sh" \
               --subscribe space.$sid mouse.clicked

    apps=$(aerospace list-windows --workspace $sid | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

    icon_strip=" "
    if [ "${apps}" != "" ]; then
      while read -r app
      do
        icon_strip+=" $($CONFIG_DIR/plugins/icon_map.sh "$app")"
      done <<< "${apps}"
    else
      icon_strip=" —"
    fi

    sketchybar --set space.$sid label="$icon_strip"
  done

  for i in $(aerospace list-workspaces --monitor $m --empty); do
    sketchybar --set space.$i display=0
  done
done

sketchybar --add item space_separator left \
           --set space_separator icon="􀆊" \
           icon.color=$GREEN \
           icon.padding_left=4 \
           icon.y_offset=0 \
           label.drawing=off \
           display=active \
           background.drawing=off \
           script="$PLUGIN_DIR/aerospace_space_windows.sh" \
           --subscribe space_sepaator space_windows_change
