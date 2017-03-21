#!/bin/bash

if ! command -v zsh > /dev/null 2>&1; then
  echo "Installing zsh..."
  brew install zsh
  echo "Setting zsh as login shell..."
  chsh -s /bin/zsh
  echo "Done."
else
  echo "zsh is already installed."
fi

if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing oh-my-zsh..."
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  echo "oh-my-zsh installed."
else
  echo "oh-my-zsh is already installed."
fi
