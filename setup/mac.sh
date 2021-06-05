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

echo " - tig"
brew install tig

echo " - bat"
brew install bat
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

echo " - [web] node v14 (LTS)"
brew install node@14
ln -s /usr/local/opt/node@14 /usr/local/opt/node

echo " - [web] yarn - install manually with"
echo "   $ npm install --global yarn\n"

echo " - [react-native] watchman"
brew install watchman

echo " - [mobile] IDEs - Install XCode and Android Studio manually"
echo " - [ios] cocoapods"
sudo gem install cocoapods

echo " - [android] JDK"
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
# </environment>

echo "\nAll setted up! :)"

