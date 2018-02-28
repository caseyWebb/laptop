#!/bin/bash

if ! command -v node > /dev/null 2>&1; then
  echo "Installing n & node"
  curl -L https://git.io/n-install | bash
  echo "node installed."
fi
