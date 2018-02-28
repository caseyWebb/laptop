#!/bin/bash

if [[ ! -a ~/.czrc ]]; then
  echo "Configuring commitizen"
  ln -s ~/.laptop/dotfiles/.czrc ~/.czrc
fi
