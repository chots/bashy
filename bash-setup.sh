#!/bin/sh

# Install homebrew via curl
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew stuff
brew install google-chrome-beta
brew install iterm2
brew install zsh
brew install spotify
brew install intellij-idea
brew install sublime-text
brew install gdub


# setup sublime command
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

brew install tree
brew install git-secrets
brew install pass
brew install adr-tools
brew install bfg
brew install git-lfs
brew install nyancat
brew install gdub

# Install oh-my-zsh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#sdk man
curl -s "https://get.sdkman.io" | bash

# SDKs
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle
sdk install groovy

cp -r ./zsh-functions $HOME/.oh-my-zsh/lib
