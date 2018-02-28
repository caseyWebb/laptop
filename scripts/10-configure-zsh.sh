#!/bin/bash

if ! command -v zsh > /dev/null 2>&1; then
  echo "Setting zsh as login shell..."
  chsh -s /bin/zsh
fi

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Installing oh-my-zsh..."
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if [[ ! -a ~/.zshrc ]]; then
  echo "Configuring zsh..."
  ln -s ~/.laptop/dotfiles/.zshrc ~/.zshrc
fi
