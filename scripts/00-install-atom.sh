#!/bin/bash

if ! command -v atom > /dev/null 2>&1; then
  echo "Installing atom..."
  brew cask install atom
else
  echo "atom is already installed."
fi

echo "Installing atom plugins..."
apm install --packages-file atom-packages.txt


mkdir -p ~/.oh-my-zsh/custom/themes

if [ ! -a ~/.zshrc ]; then
  echo "Linking .zshrc and .zsh-theme..."
  ln -s ~/.laptop/.zshrc ~/.zshrc
  ln -s ~/.laptop/.zsh-theme ~/.oh-my-zsh/custom/themes/custom.zsh-theme
  echo "Done."
fi
