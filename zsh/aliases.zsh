#!/bin/zsh

# git
alias g="git"
alias gs="g status"
alias gco="g checkout"
alias gcb="gco -b"
alias ga="g add"
alias gr="g reset"
alias gc="g commit"
alias gcm="gc -m"

# old python version
alias python2='python2.7'

# contest compilation
contest_compile() {
    echo "CPP compile for contest ($1 -> $2)"
    g++ -std=c++14 $1 -o $2 -Wl
}

# connect to local postgres database through psql
alias dbcon="psql -h localhost -p 5432 -d postgres"

# neovim
alias vim="nvim"
# vim
alias v="vim ."
