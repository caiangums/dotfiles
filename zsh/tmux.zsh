#!/bin/zsh

# enter default tmux
__tmux_create_default_session() {
    echo "tmux"
    if [ -z "$TMUX" ]
    then
      tmux attach -t "default" || tmux new -s "default"
    fi
}

alias tdef=__tmux_create_default_session
