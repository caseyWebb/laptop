#!/bin/bash

if [[ ! $(brew bundle check) ]]; then
  cd ~/.laptop

  echo "Restoring homebrew packages from backup"
  brew bundle install

  cd -
fi