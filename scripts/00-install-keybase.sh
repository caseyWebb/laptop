#!/bin/bash

if [ ! -d /Applications/Keybase.app ]; then
  echo "Installing Keybase"
  brew cask install keybase
  open /Applications/Keybase.app &
  read -n 1 -p "Keybase installed. Please login, then press [any key] to continue"
fi
