#!/bin/bash

if ! command -v node > /dev/null 2>&1; then
  echo "Installing n & node..."
  curl -L https://git.io/n-install >> /tmp/n-install.sh
  chmod +x /tmp/n-install.sh
  yes | /tmp/n-install.sh
  rm /tmp/n-install.sh
  source $HOME/.bashrc
  source
  echo "node installed."
else
  echo "node is already installed."
fi
