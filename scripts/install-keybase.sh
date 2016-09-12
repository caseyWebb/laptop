#!/bin/bash

echo "Installing Keybase..."

brew cask install keybase
open /Applications/Keybase.app &
read -n 1 -p "Please login to keybase, then press any key to continue..."
