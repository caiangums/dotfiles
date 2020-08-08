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
    zstyle ':vcs_info:git:*' formats "%c%u %F{240}%b%f"
    zstyle ':vcs_info:*:*' stagedstr '%B%F{green}+%f%b'
    zstyle ':vcs_info:*:*' unstagedstr '%B%F{red}+%f%b'
    zstyle ':vcs_info:git:*' check-for-changes true
    zstyle ':vcs_info:*' enable git
}

__git_integration

# setup prompt
PROMPT='%B%F{blue}cg%f%b: %F{green}%~%f $ '

