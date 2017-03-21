#!/bin/bash

mkdir -p ~/.oh-my-zsh/custom/themes

if [ ! -a ~/.zshrc ]; then
  echo "Linking .zshrc and .zsh-theme..."
  ln -s ~/.laptop/.zshrc ~/.zshrc
  ln -s ~/.laptop/.zsh-theme ~/.oh-my-zsh/custom/themes/custom.zsh-theme
  echo "Done."
fi
