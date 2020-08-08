#!/bin/sh

__DOTFILE_DIR=".dotfiles"

__backup_old_file() {
    if [ -f "$1" ]; then
        echo " saving old config: $1"
        mv "$1" "$1.old"
    fi
}

__create_zshrc() {
    __ZSH_FILE=".zshrc"

    echo "[config] zsh - start"
    __backup_old_file "$HOME/$__ZSH_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__ZSH_FILE" "$HOME/$__ZSH_FILE"
    echo "[config] zsh - end"
}

__create_alacritty_config() {
    __ALACRITTY_DIR="$HOME/.config/alacritty"
    __ALACRITTY_FILE="alacritty.yml"

    if [ ! -d "$__ALACRITTY_DIR" ]; then
        echo "[config] Alacritty - not installed"
        return;
    fi

    echo "[config] Alacritty - start"

    __backup_old_file "$__ALACRITTY_DIR/$__ALACRITTY_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__ALACRITTY_FILE" "$__ALACRITTY_DIR/$__ALACRITTY_FILE"
    echo "[config] Alacritty - end"
}

__create_tmux_config() {
    __TMUX_CONF_FILE=".tmux.conf"

    echo "[config] tmux - start"
    __backup_old_file "$HOME/$__TMUX_CONF_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__TMUX_CONF_FILE" "$HOME/$__TMUX_CONF_FILE"
    echo "[config] tmux - end"
}

__create_git_config() {
    __GIT_CONFIG_FILE=".gitconfig"
    __GIT_IGNORE_GLOBAL_FILE=".gitignore_global"

    echo "[config] git - start"
    __backup_old_file "$HOME/$__GIT_CONFIG_FILE"

    __backup_old_file "$HOME/$__GIT_IGNORE_GLOBAL_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/git/$__GIT_CONFIG_FILE" "$HOME/$__GIT_CONFIG_FILE"
    ln -s "$HOME/$__DOTFILE_DIR/git/$__GIT_IGNORE_GLOBAL_FILE" "$HOME/$__GIT_IGNORE_GLOBAL_FILEE"
    echo "[config] git - end"
}

__create_vimrc() {
    __VIMRC_FILE=".vimrc"

    echo "[config] vim - start"
    __backup_old_file "$HOME/$__VIMRC_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__VIMRC_FILE" "$HOME/$__VIMRC_FILE"
    echo "[config] vim - end"
}

__create_zshrc

__create_alacritty_config

__create_tmux_config

__create_git_config

__create_vimrc
