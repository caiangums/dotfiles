echo "MacOS - setup"

# <applications>
echo "\napplications"

echo " - homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo " - alacritty"
brew install --cask alacritty

echo " - tmux"
brew install tmux

echo " - docker"
brew install docker

echo " - neovim"
brew install neovim

echo " - general CLI tools"
brew install tig bat \
    asdf gnupg \
    mongocli kubectl \
    tree \
    hugo \
    exercism \
    ripgrep
# </applications>

# <configs>
echo "\nconfigs"

echo " - dotfiles"
git clone https://github.com/caiangums/dotfiles.git $HOME/.dotfiles
./.dotfiles/install.sh
# </configs>

# <plugins>
echo "\nplugins"

echo " - vim-plug (:PlugInstall required after installation)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo " - vim-plug for neovim (:PlugInstall required)"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# </plugins>

# <environment>
echo "\nenvironment"

echo " - [web] node v16 \(LTS\)"
asdf plugin-add nodejs
# asdf install nodejs 14.17.0 # v14 if needed
# asdf install nodejs 16.15.1 # v16 if needed
asdf install nodejs 18.13.0
asdf global nodejs 18.13.0

echo " - [web] ruby v3"
asdf plugin-add ruby
asdf install ruby 3.0.4
asdf global ruby 3.0.4

echo " - [web] python v3"
asdf plugin-add python
asdf install python 3.11
asdf global python 3.11

echo " - [web] postgres CLI"
asdf plugin-add postgres
asdf install postgres latest
asdf global postgres

echo " - [web] Lens (kubernates IDE)"
brew install --cask lens

echo " - [web] terraform"
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

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

