#!/bin/bash

if ! command -v yarn > /dev/null 2>&1; then
  echo "Installing yarn..."
  wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
  dnf install -y yarn
  source $HOME/.bashrc
  echo "Done."
else
  echo "yarn is already installed."
fi
