#!/bin/bash

echo "Restoring homebrew packages from backup..."
brew install $(cat ./brew-packages.txt)

echo "Restoring homebrew-cask packages from backup..."
brew cask install $(cat ./brew-cask-packages.txt)
