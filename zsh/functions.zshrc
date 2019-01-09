#!/bin/bash

set() {
  c=$1
  echo "Setting $c to .zshrc"
  echo "$c" >> ~/.zshrc
}

set "
## Always attach to the same session
if [[ ! $TERM =~ screen ]]; then
    session='dev'
    if tmux has-session -t $session 2>/dev/null; then
        tmux -2 attach-session -t $session
    else
        tmux -2 new-session -s $session -n $session
    fi
fi
"
