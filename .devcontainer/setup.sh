#!/bin/bash

# Install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Use explicit path and add to both .bashrc and .bash_profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.bashrc 
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.bash_profile

# Source brew for this session so subsequent commands work
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install dev tools
brew install neovim chezmoi sops yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font

# Install dotfiles
chezmoi init https://github.com/joshrnoll/dotfiles.git && \
  chezmoi apply
