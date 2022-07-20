#!/bin/zsh

# git
alias g="git"
alias gs="g status"
alias gco="g checkout"
alias gcl="g clone"
alias gcb="gco -b"
alias ga="g add"
alias gr="g reset"
alias gc="g commit"
alias gcm="gc -m"

# contest compilation
contest_compile() {
    echo "CPP compile for contest ($1 -> $2)"
    g++ -std=c++14 $1 -o $2 -Wl
}

# connect to local postgres database through psql
alias dbcon="psql -h localhost -p 5432 -d postgres"

# editor
# use neovim instead of vim
alias vim="nvim"
# open vim at the actual directory
alias v="vim ."

# edit configs
alias dot="vim $HOME/.dotfiles"
alias dotvim="vim $HOME/.vimrc"
