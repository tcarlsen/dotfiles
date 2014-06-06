#!/bin/sh
#
# homebrew-cask

# Tap tap tap
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts
brew tap caskroom/unofficial

# Install homebrew-cask
brew install brew-cask

# Install casks from cask bundle
brew bundle ~/.dotfiles/homebrew-cask/Caskfile

# Make alfred work nicely with cask
brew cask alfred link

Echo "Done!"
