#!/bin/sh

__DOTFILE_DIR=".dotfiles"

__create_zshrc() {
    __ZSH_FILE=".zshrc"

    echo "create symlink for .zshrc"
    if [ -f "$HOME/$__ZSH_FILE" ]; then
        echo " saving old config..."
        mv "$HOME/$__ZSH_FILE" "$HOME/$__ZSH_FILE.old"
    fi

    ln -s "$HOME/$__DOTFILE_DIR/$__ZSH_FILE" "$HOME/$__ZSH_FILE"
    echo "created"
}

__create_alacritty_config() {
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

__create_tmux_config() {
    __TMUX_CONF_FILE=".tmux.conf"

    echo "creating symlink for .tmux.conf"
    if [ -f "$HOME/$__TMUX_CONF_FILE" ]; then
        echo " saving old config..."
        mv "$HOME/$__TMUX_CONF_FILE" "$HOME/$__TMUX_CONF_FILE.old"
    fi

    ln -s "$HOME/$__DOTFILE_DIR/$__TMUX_CONF_FILE" "$HOME/$__TMUX_CONF_FILE"
    echo "created"
}

__create_zshrc

__create_alacritty_config

__create_tmux_config

