#!/bin/zsh

stty -ixon

#TERM=xterm-256color

# <dotfiles>
__DOTFILES_DIR=".dotfiles"

__ZSH_DOTFILES_DIR="$HOME/$__DOTFILES_DIR/zsh"
# </dotfiles>

source $__ZSH_DOTFILES_DIR/development.zsh

source $__ZSH_DOTFILES_DIR/configuration.zsh

source $__ZSH_DOTFILES_DIR/profile.zsh

source $__ZSH_DOTFILES_DIR/aliases.zsh
if [[ -f "$__ZSH_DOTFILES_DIR/work-aliases.zsh" ]]; then
    source $__ZSH_DOTFILES_DIR/work-aliases.zsh
fi

source $__ZSH_DOTFILES_DIR/tmux.zsh

