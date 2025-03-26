#!/bin/bash

# Install ZSH
apt-get update && apt-get install -y zsh

# Install dotfiles
if [ -d "$HOME/.dotfiles" ]; then
  cd $HOME/.dotfiles
  ./install.sh || ./setup.sh || echo "No install script found, manual setup may be required."
else
  echo "Dotfiles directory not found. Ensure it's mounted correctly."
fi

# Set ZSH as default shell
chsh -s $(which zsh)
