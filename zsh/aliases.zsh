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
alias gcp="g cherry-pick"
alias gpl="g pull"
alias gpo="g push -u origin HEAD"
alias gb="g branch"
alias uncommit="g reset HEAD~1 --soft"
alias guc="uncommit"

# contest compilation
contest_compile() {
    echo "CPP compile for contest ($1 -> $2)"
    g++ -std=c++14 $1 -o $2 -Wl
}

# file rename to remove initial _ character\
ai_rename() {
    for file in _*; do
        echo "renaming ${file}"
        mv -n -- "$file" "${file#_}";
    done;
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

# scripts
# run `yarn test` in the current directory
alias yt="yarn test"

# personal scripts
# if the `script-manager` command is available, use it to run scripts
if command -v script-manager &> /dev/null; then
    alias sm='script-manager'
fi
