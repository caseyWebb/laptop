#!/bin/bash

echo "Installing homebrew packages from backup..."
brew install $(cat ./brew-packages.txt)

echo "Installing homebrew-cask packages from backup..."
brew cask install $(cat ./brew-cask-packages.txt);