#!/bin/bash

if ! command -v yarn > /dev/null 2>&1; then
  echo "Installing yarn..."
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  apt-get update
  apt-get install yarn
  source $HOME/.bashrc
  echo "Done."
else
  echo "yarn is already installed."
fi
