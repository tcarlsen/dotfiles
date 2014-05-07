#!/bin/sh
#
# Node Version Manager

# Install Node Version Manager
curl https://raw.github.com/creationix/nvm/v0.4.0/install.sh | sh

# Install the latest version of Node.js
nvm install 0.10

# Set a default Node version to be used in any new shell
nvm alias default 0.10
