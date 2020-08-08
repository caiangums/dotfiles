#!/bin/zsh

# python - Setup pyenv for multiple envs
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# locale
export LC_CTYPE=C

# nvm stuff
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# yarn - Add yarn to $PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# node - Setup LTS version
export PATH="/usr/local/opt/node@12/bin:$PATH"

# android - Android paths for React Native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

