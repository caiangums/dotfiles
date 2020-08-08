#!/bin/sh

__create_zshrc() {
    __DOTFILE_DIR=".dotfiles"
    __ZSH_FILE=".zshrc"

    echo "create symlink for .zshrc"
    if [ -f "$HOME/$__ZSH_FILE" ]; then
        echo " saving old config..."
        mv "$HOME/$__ZSH_FILE" "$HOME/$__ZSH_FILE.old"
    fi

    ln -s "$HOME/$__DOTFILE_DIR/$__ZSH_FILE" "$HOME/$__ZSH_FILE"
    echo "created!"
}

__create_alacritty_config() {
    __DOTFILE_DIR=".dotfiles"
    __ALACRITTY_DIR="$HOME/.config/alacritty"
    __ALACRITTY_FILE="alacritty.yml"

    if [ ! -d "$__ALACRITTY_DIR" ]; then
        echo "[error] Alacritty not installed"
        return;
    fi

    echo "creating symlink for alacritty.yml"
    if [ -f "$__ALACRITTY_DIR/$__ALACRITTY_FILE" ]; then
        echo " saving old config..."
        mv "$__ALACRITTY_DIR/$__ALACRITTY_FILE" "$__ALACRITTY_DIR/$__ALACRITTY_FILE.old"
    fi

    ln -s "$HOME/$__DOTFILE_DIR/$__ALACRITTY_FILE" "$__ALACRITTY_DIR/$__ALACRITTY_FILE"
    echo "created"
}

__create_zshrc

__create_alacritty_config
