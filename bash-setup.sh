#!/bin/sh

# Install homebrew via curl
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew stuff
brew cask install google-chrome-beta
brew cask install iterm2
brew cask install zsh
brew cask install spotify
brew cask install intellij-idea

brew install tree
brew install git-secrets
brew install pass
brew install adr-tools
brew install tgt/brewhouse/gardenia
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
