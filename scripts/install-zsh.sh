#!/bin/bash

echo "Installing zsh..."

brew install zsh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  mkdir -p $HOME/.oh-my-zsh/custom/themes
  rm $HOME/.zshrc
  ln -s $HOME/.laptop/.zshrc $HOME/.zshrc
  ln -s $HOME/.laptop/.zsh-theme $HOME/.oh-my-zsh/custom/themes/custom.zsh-theme
fi
