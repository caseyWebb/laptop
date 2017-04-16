#!/bin/bash

if ! command -v dnf > /dev/null 2>&1; then
  echo "Installing dnf..."
  yum install -y epel-release
  yum install -y dnf
  source $HOME/.bashrc
  dnf upgrade
  echo "Done."
else
  echo "dnf is already installed."
fi
