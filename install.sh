#!/bin/bash
read -r -p "Enter sudo password: " -s suPassword
echo

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
  git config --global user.name "Casey Webb"
  git config --global user.email "notcaseywebb@gmail.com"
fi

if [ ! -d ~/.laptop ]; then
  git clone git@github.com:caseyWebb/laptop.git ~/.laptop
fi

chmod +x ~/.laptop/root_scripts/*
for s in ~/.laptop/root_scripts/*.sh; do
  echo $suPassword | sudo -S $s;
done

chmod +x ~/.laptop/scripts/*
for s in ~/.laptop/scripts/*.sh; do source $s; done

if [ ! -d /Applications/Google\ Chrome.app ]; then
  open https://chrome.google.com
fi

if [ ! -d /Applications/Spectacle.app ]; then
  open https://spectacleapp.com
fi

zsh
