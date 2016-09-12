#!/bin/bash

if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing homebrew-cask..."
  brew tap caskroom/cask
else
  echo "\`brew\` found in \$PATH. Skipping."
fi