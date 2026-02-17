#!/bin/zsh

# setup git integration
__git_integration() {
    autoload -Uz vcs_info

    # add to precmd_functions hook
    __precmd_vcs_info() { vcs_info }
    precmd_functions+=( __precmd_vcs_info )

    setopt prompt_subst
    # setup RPROMPT var + configs
    RPROMPT=\$vcs_info_msg_0_
    zstyle ':vcs_info:git:*' formats "%c%u %F{250}%b%f"
    zstyle ':vcs_info:*:*' stagedstr '%B%F{46}+%f%b'
    zstyle ':vcs_info:*:*' unstagedstr '%B%F{196}+%f%b'
    zstyle ':vcs_info:git:*' check-for-changes true
    zstyle ':vcs_info:*' enable git
}

__git_integration

# setup prompt
PROMPT='%B%F{14}cg%f%b: %F{10}%~%f $ '

# load personal scripts
export PATH="$HOME/.dotfiles/bin/script-manager:$PATH"

# script-manager completion
if command -v script-manager &>/dev/null; then
  # if script-manager is installed, source it
  source "$HOME/.dotfiles/bin/script-manager/completions.zsh"
fi

# [homebrew]
eval "$(/opt/homebrew/bin/brew shellenv)"

# [asdf]
source $(brew --prefix asdf)/libexec/asdf.sh

# claude code editor
export EDITOR=nvim
