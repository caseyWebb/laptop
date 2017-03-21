#!/bin/bash

if [ ! -a ~/.gitconfig ]; then
  echo "Linking .gitconfig..."
  ln -s ~/.laptop/.gitconfig ~/.gitconfig
  echo "Done."
fi
