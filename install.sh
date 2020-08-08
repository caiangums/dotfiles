#!/bin/sh

__create_zshrc() {
    __DOTFILE_DIR=".dotfiles"
    __ZSH_FILE=".zshrc"

    echo "Create Symlink for .zshrc"
    if [ -f "$HOME/$__ZSH_FILE" ]; then
        mv "$HOME/$__ZSH_FILE" "$HOME/$__ZSH_FILE.old"
    fi

    ln -s "$HOME/$__DOTFILE_DIR/$__ZSH_FILE" "$HOME/$__ZSH_FILE"
    echo "Created!"
}

__create_zshrc

