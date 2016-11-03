#!/bin/bash

if [ -a /keybase/private/*/gpg_private.asc ]; then
  echo "Importing gpg key from keybase..."
  gpg --import /keybase/private/*/gpg_private.asc
fi
