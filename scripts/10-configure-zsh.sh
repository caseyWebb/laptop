#!/bin/bash

if [ ! -a $HOME/.zshrc ]; then
  if [ ! -d $HOME/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh..."
    git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
    echo "oh-my-zsh installed."
  else
    echo "oh-my-zsh is already installed."
  fi

  echo "Linking .zshrc and .zsh-theme..."
  rm $HOME/.zshrc
  mkdir -p $HOME/.oh-my-zsh/custom/themes
  ln -s $HOME/.laptop/.zshrc $HOME/.zshrc
  ln -s $HOME/.laptop/.zsh-theme $HOME/.oh-my-zsh/custom/themes/custom.zsh-theme

  echo "Setting zsh as login shell..."
  chsh -s /bin/zsh

  echo "Done."
fi
