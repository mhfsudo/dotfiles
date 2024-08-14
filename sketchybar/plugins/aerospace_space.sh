#!/bin/bash

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

update() {
  if [ "$SENDER" = "space_change" ]; then
    source "$CONFIG_DIR/colors.sh"
    if [ "$SELECTED" = "true" ]; then
      sketchybar --set space.$(aerospace list-workspaces --focused) icon.highlight=true \
                        label.highlight=true \
                        background.color=NULL \
                        background.border_color=$TEAL \
                        background.border_width=1
    else
      sketchybar --set space.$(aerospace list-workspaces --focused) icon.highlight=true \
                        label.highlight=true \
                        background.color=$PINK \
                        background.border_color=$PINK \
                        background.border_width=1
    fi
  fi
}

set_space_label() {
  sketchybar --set $NAME icon="$@"
}

mouse_clicked() {
  if [ "$BUTTON" = "right" ]; then
    # yabai -m space --destroy $SID
    echo ''
  else
    if [ "$MODIFIER" = "shift" ]; then
      SPACE_LABEL="$(osascript -e "return (text returned of (display dialog \"Give a name to space $NAME:\" default answer \"\" with icon note buttons {\"Cancel\", \"Continue\"} default button \"Continue\"))")"
      if [ $? -eq 0 ]; then
        if [ "$SPACE_LABEL" = "" ]; then
          set_space_label "${NAME:6}"
        else
          set_space_label "${NAME:6} ($SPACE_LABEL)"
        fi
      fi
    else
      #yabai -m space --focus $SID 2>/dev/null
      #echo space.sh BUTTON: $BUTTON, $'SELECTED': $SELECTED, MODIFIER: $MODIFIER, NAME: $NAME, SENDER: $SENDER, INFO: $INFO, TEST: ${NAME#*.}, ${NAME:6} >> ~/aaaa
      aerospace workspace ${NAME#*.}
    fi
  fi
}

# echo plugin_space.sh $SENDER >> ~/aaaa
case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
  *) update
  ;;
esac
