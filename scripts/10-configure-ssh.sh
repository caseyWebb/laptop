#!/bin/bash

if [[ ! -a ~/.ssh/id_* ]] && [[ -d /keybase/private/*/ssh/ ]]; then
  echo "Importing ssh key(s) and configuration..."
  mkdir -p ~/.ssh
  ln -s /keybase/private/*/ssh/* ~/.ssh
  chmod -R 700 ~/.ssh
fi
