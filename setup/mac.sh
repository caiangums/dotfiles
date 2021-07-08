echo "MacOS - setup"

# <applications>
echo "\napplications"

echo " - homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo " - alacritty"
brew install --cask alacritty

echo " - tmux"
brew install tmux

echo " - vscode"
brew install --cask visual-studio-code

echo " - docker"
brew install --cask docker

echo " - CLI tools (tig, bat, asdf, tree)"
brew install tig bat asdf gnupg tree
# </applications>

# <configs>
echo "\nconfigs"

echo " - dotfiles"
git clone https://github.com/caiangums/dotfiles.git $HOME/.dotfiles
./.dotfiles/install.sh
# </configs>

# <plugins>
echo "\nplugins"

echo " - vim-plug (:PlugInstall required)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# </plugins>

# <environment>
echo "\nenvironment"

echo " - [web] node v14 \(LTS\)"
asdf plugin-add nodejs
asdf install nodejs 14.17.0
asdf global nodejs 14.17.0

echo " - [web] ruby v3"
asdf plugin-add ruby
asdf install ruby 3.0.1
asdf global ruby 3.0.1

echo " - [web] postgres v13"
asdf plugin-add postgres
asdf install postgres 13.3
asdf global postgres 13.3

# echo " - [web] node v14 (LTS)"
# asdf plugin-add nodejs
# asdf install nodejs 14.17.0

# echo " - [web] yarn - install manually with"
# echo "   $ npm install --global yarn\n"

echo " - [react-native] watchman"
brew install watchman

echo " - [mobile] IDEs - Install XCode and Android Studio manually"
echo " - [ios] cocoapods"
sudo gem install cocoapods

echo " - [android] JDK"
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
# </environment>

echo "\nAll setted up! :)"
echo \
    "\nAlso, don't forget to:" \
    "\n - open vim and run :PlugInstall"

