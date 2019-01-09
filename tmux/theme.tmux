#!/bin/bash

# Color Schemes
dark="#2b2b2b"
light_gray="#e8e8e8"
dark_gray="#9b9b9b"

# Function to set TMUX option-value tuple
# f: o for set-option otherwise set-window-option
set() {
  o=$1
  v=$2
  f=$3
  echo "Setting $o to value $v"
  if [ "$f" = "w" ]; then
    tmux set-window-option -gq "$o" "$v"
  else
    tmux set-option -gq "$o" "$v"
  fi
}

## History limit
set "history-limit" "50000"

## Status and Window Status
set "status" "on"
set "status-justify" "left"

set "status-bg" "$dark"
set "status-fg" "colour15"

set "window-status-separator" "" w

set "status-attr" "none"
set "status-left-attr" "none"
set "status-right" "%H:%M %a %d-%b-%y"
set "status-right-attr" "bold"

## Windows
set "window-style" "fg=$dark_gray,bg=$dark"
set "window-active-style" "fg=$light_gray,bg=$dark"

## Panes
set "pane-border-style" "fg=$dark_gray,bg=$dark"
set "pane-active-border-style" "fg=colour237,bg=$dark"

## Mouse
set "mouse" "on"
