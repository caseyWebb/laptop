#!/bin/bash

if [ ! -a $HOME/.gitconfig ]; then
  echo "Linking .gitconfig..."
  ln -s $HOME/.laptop/.gitconfig $HOME/.gitconfig
  echo "Done."
fi
