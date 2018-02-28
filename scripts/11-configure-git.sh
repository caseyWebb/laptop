#!/bin/bash

if [[ ! -a ~/.gitconfig ]]; then
  echo "Linking .gitconfig"
  ln -s ~/.laptop/dotfiles/.gitconfig ~/.gitconfig
  echo "Done."
fi
