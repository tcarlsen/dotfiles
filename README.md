# tcarlsen dotfiles

My personal dotfiles setup for macOS. Forked from [holman/dotfiles](https://github.com/holman/dotfiles) with my own customizations and optimizations.

**A huge thanks to [Zach Holman](https://github.com/holman) for the excellent foundation and philosophy behind this project!**

## Overview

This is a modular, topic-based dotfiles repository designed to be easy to maintain and extend. Everything is organized by topic (node, maven, ruby, etc.), so adding or removing tools is straightforward.

### What's included

- **Shell configuration**: Zsh with customized aliases, functions, and key bindings
- **Version managers**: Node (NVM), Java (SDKMAN), Ruby (chruby)
- **Build tools**: Maven, Yarn, Docker
- **Git configuration**: Git aliases and helper scripts
- **Homebrew setup**: Apps and dependencies via Brewfile
- **Useful bin scripts**: Custom utilities for common tasks

## Quick Start

### First time setup on a new machine

```bash
# Clone the repo
git clone https://github.com/tcarlsen/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Run the bootstrap script (creates symlinks)
script/bootstrap

# Install all Homebrew apps and dependencies
brew bundle

# (Optional) Install any system defaults
# script/install
```

The bootstrap script will:
- Symlink dotfiles to your home directory
- Set up your `.zshrc`
- Link all configuration files (`.symlink` files)

### Update your configuration

If you make changes to your dotfiles:

```bash
cd ~/.dotfiles
# Your changes are already active (most .zsh files are sourced directly)
# Or reload your shell:
source ~/.zshrc

# Commit and push your changes
git add .
git commit -m "Update configuration"
git push
```

## How it works

### File structure

Everything is organized by topic:

```
zsh/              # Shell configuration
├── config.zsh    # Zsh options and history
├── aliases.zsh   # General shell aliases
└── zshrc.symlink # Main shell config (symlinked to ~/.zshrc)

git/              # Git configuration
├── aliases.zsh   # Git aliases and shortcuts
└── gitconfig.symlink

node/             # Node.js & NVM
maven/            # Maven build tool
sdkman/           # Java & SDKMAN
chruby/           # Ruby & chruby
system/           # System utilities
docker/           # Docker configuration
bin/              # Custom scripts (added to PATH)
```

### Special files

- **`*.zsh`**: Automatically sourced into your shell environment
- **`path.zsh`**: Loaded first - use for PATH setup
- **`completion.zsh`**: Loaded last - use for autocomplete
- **`*.symlink`**: Gets symlinked to `$HOME` when you run `script/bootstrap`
- **`install.sh`**: Executed when you run `script/install`

## Useful commands

Some of my most-used custom commands in `bin/`:

### Git utilities
- `git-up` - Update all git branches
- `git-undo` - Undo last commit
- `git-nuke` - Delete branches safely
- `git-wtf` - Show a fancy branch tree
- `git-rank-contributors` - See who's committed most

### System utilities
- `dot` - Run system setup/maintenance
- `c` - Jump to a project directory (with tab completion)
- `extract` - Extract any archive file (.zip, .tar.gz, etc.)
- `battery-status` - Show battery percentage
- `set-defaults` - Configure macOS defaults

## Local configuration

For machine-specific or sensitive settings (API keys, personal tokens, etc.), use `~/.localrc`:

```bash
# ~/.localrc (not in version control)
export GITHUB_TOKEN="your-token-here"
export DB_PASSWORD="your-password"
```

This file is sourced automatically by `zshrc` if it exists.

## Customization

### Editing existing configuration

- **Shell aliases**: Edit `system/aliases.zsh` or topic-specific files
- **Git config**: Edit `git/gitconfig.symlink` for global, `git/gitconfig.local.symlink` for local
- **Shell options**: Edit `zsh/config.zsh`

## Philosophy

> Your dotfiles are how you personalize your system.

This structure makes it easy to:
- **Keep things organized** - Each tool has its own directory
- **Version control** - Everything is tracked and can be synced
- **Avoid conflicts** - Local config stays in `~/.localrc`
- **Fork and customize** - Take what you need, modify what you don't

For more on why dotfiles matter, check out [Zach's original post](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Thanks

Big thanks to:
- **[Zach Holman](https://github.com/holman)** - For the original dotfiles structure and philosophy
- **[Ryan Bates](https://github.com/ryanb)** - Original inspiration for bash/zsh customization
