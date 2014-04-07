#!/bin/sh
#
# homebrew-cask

# Install homebrew-cask
brew tap phinze/cask
brew install brew-cask

# Install some quicklook-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json quicklook-csv

# Install some browsers
brew cask install google-chrome firefox

# Install must have apps
brew cask install alfred github gas-mask iterm2 dropbox licecap skype sequel-pro appzapper caffeine evernote skitch steam spotify

# Install games
brew cask league-of-legends minecraft

# Make alfred work nicely with cask
brew cask alfred link
