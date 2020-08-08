#!/bin/zsh

# setup ls colors
autoload -U colors && colors

# ENV Var for ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# always show colors
alias ls='ls -G'
