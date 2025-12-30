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
    __ALACRITTY_FILE=".alacritty.toml"

    echo "[config] Alacritty - start"

    __backup_old_file "$HOME/$__ALACRITTY_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__ALACRITTY_FILE" "$HOME/$__ALACRITTY_FILE"
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

__VIMRC_FILE=".vimrc"
__create_vimrc() {
    echo "[config] vim - start"
    __backup_old_file "$HOME/$__VIMRC_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__VIMRC_FILE" "$HOME/$__VIMRC_FILE"
    echo "[config] vim - end"
}

# OLD init.vim config
__NEOVIM_DIR=".config/nvim"
__NEOVIMRC_FILE="init.vim"
__create_neovimrc() {
    echo "[config] neovim (init.vim) - start"
    mkdir -p "$HOME/$__NEOVIM_DIR"

    __backup_old_file "$HOME/$__NEOVIM_DIR/$__NEOVIMRC_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__VIMRC_FILE" "$HOME/$__NEOVIM_DIR/$__NEOVIMRC_FILE"

    echo "[config] neovim (init.vim) - end"
}


# New NeoVim configs
__NEOVIM_CONFIG_DIR=".config"
__DOTFILES_CONFIGS_NEOVIM_DIR="nvim/.config/nvim"
__INIT_NEOVIM_LUA_FILE="init.lua"
__create_neoviminit() {
    echo "[config] neovim - start"
    mkdir -p "$HOME/$__NEOVIM_CONFIG_DIR"

    #__backup_old_file "$HOME/$__NEOVIM_DIR/$__INIT_NEOVIM_LUA_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__DOTFILES_CONFIGS_NEOVIM_DIR" "$HOME/$__NEOVIM_CONFIG_DIR"

    echo "[config] neovim - end"
}

__create_asdfrc() {
    __ASDFRC_FILE=".asdfrc"

    echo "[config] asdf - start"
    __backup_old_file "$HOME/$__ASDFRC_FILE"

    ln -s "$HOME/$__DOTFILE_DIR/$__ASDFRC_FILE" "$HOME/$__ASDFRC_FILE"
    echo "[config] asdf - end"
}

__create_zshrc

__create_alacritty_config

__create_tmux_config

__create_git_config

#__create_vimrc

__create_neoviminit

__create_asdfrc
