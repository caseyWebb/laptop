#!/bin/bash

if [ ! -a ~/.ssh/id_* ] && [ -d /keybase/private/*/keys/ ]; then
  echo "Importing ssh keys from keybase..."
  mkdir -p ~/.ssh
  cp /keybase/private/*/keys/id_* ~/.ssh
  chmod -R 700 ~/.ssh
  echo "SSH keys imported."
fi
