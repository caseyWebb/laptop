#!/bin/bash

if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew..."
  yes | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "brew is already installed."
fi

if ! command -v brew cask > /dev/null 2>&1; then
  echo "Installing homebrew-cask..."
  brew tap caskroom/cask
fi

if ! command -v git > /dev/null 2>&1; then
  yes | brew install git
fi

if [ ! -d ~/.laptop ]; then
  git clone git@github.com:caseyWebb/laptop.git ~/.laptop
fi

chmod +x ~/.laptop/scripts/*
for s in ~/.laptop/scripts/*.sh; do source $s; done

zsh
