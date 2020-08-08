#!/bin/zsh

# enter tmux
if [ -z "$TMUX" ]
then
  tmux attach -t "default" || tmux new -s "default"
fi
