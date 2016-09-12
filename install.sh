#!/bin/bash

if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing homebrew-cask..."
  brew tap caskroom/cask
else
  echo "\`brew\` found in \$PATH. Skipping."
fi

brew install git

if [ ! -d "$HOME/.laptop" ]; then
  git clone https://github.com/caseyWebb/laptop.git $HOME/.laptop
fi

chmod +x $HOME/.laptop/scripts/*

$HOME/.laptop/scripts/install-keybase.sh
$HOME/.laptop/scripts/install-node.sh
$HOME/.laptop/scripts/install-zsh.sh
$HOME/.laptop/scripts/install-homebrew-packages.sh

$HOME/.laptop/scripts/setup-ssh.sh
