#!/bin/bash

if [ ! -d "$HOME/.ssh" && -d /keybase/private/*/keys/ ]; then
  echo "Importing ssh keys from keybase"
  mkdir $HOME/.ssh
  cp /keybase/private/*/keys/id_* $HOME/.ssh
  chmod -R 700 $HOME/.ssh
fi
