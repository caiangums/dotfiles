# 📚 dotfiles

Personal dotfiles repo. **Simple** and **Minimal**.

## 📦 What I use

- [zsh](https://www.zsh.org/) - shell
- [Alacritty](https://github.com/alacritty/alacritty) - fastest terminal ever
- [tmux](https://github.com/tmux/tmux) - terminal multiplexer
- [neovim](https://neovim.io/) - text editor ([vim](https://www.vim.org/) compatible)
- [asdf](https://asdf-vm.com/) - tool version manager (to rule them all?)

## 🐺 What about the first setup?

Configuring a new machine doesn't have to be painful. See the `setup/` directory and check your flavor:
- [MacOS](setup/mac.sh)
- _Linux_ (TBD)

## 🧙‍♂️ Why focused in simplicity?

Yes.

## 🔭 Install

1. Clone this repo at `.dotfiles` dir inside your `$HOME` dir
```zsh
$ git clone https://github.com/caiangums/dotfiles.git $HOME/.dotfiles
```

2. Run install script

```zsh
$ cd .dotfiles
$ ./install.sh
```

3. Update the `.gitconfig` file with your name and email

4. [optional] **vim**/**neovim** - Open editor and run `:PlugInstall`

## 🤔 Why do you use X instead of Y?

Personal choices. Facing that as a goal and not as a path limit the possibility to improve.

> _And what about [OhMyZsh](https://ohmyz.sh/)?_

I like it and used it before. But I prefer maintain my own configs based on what best fits me.

