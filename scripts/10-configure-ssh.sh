#!/bin/bash

if [ ! -a ~/.ssh/id_* ] && [ -d /keybase/private/*/keys/ ]; then
  echo "Importing ssh keys and configuration from keybase..."
  mkdir -p ~/.ssh
  ln -s /keybase/private/*/ssh/* ~/.ssh
  chmod -R 700 ~/.ssh
  echo "SSH keys and config imported."
fi
