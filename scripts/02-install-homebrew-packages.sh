#!/bin/bash

cd ~/.laptop

echo "Restoring homebrew packages from backup..."
brew bundle install

cd -