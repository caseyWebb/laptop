#!/bin/bash

if ! command -v atom > /dev/null 2>&1; then
  echo "Installing atom..."
  brew cask install atom
else
  echo "atom is already installed."
fi

echo "Installing atom plugins..."
apm install --packages-file atom-packages.txt

echo "Configuring atom..."
cd ~/.atom
rm $(ls ~/.laptop/.atom)
ln -s ~/.laptop/.atom/* ~/.atom

cd -
