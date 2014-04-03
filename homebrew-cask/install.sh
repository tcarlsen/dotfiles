#!/bin/sh
#
# homebrew-cask

# Install homebrew-cask
brew tap phinze/cask
brew install brew-cask

# Install some quicklook-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json quicklook-csv
