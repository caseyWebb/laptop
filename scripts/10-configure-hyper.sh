#!/bin/bash

if [ ! -a ~/.hyper.js ]; then
  echo "Linking .hyper.js..."
  ln -s ~/.laptop/.hyper.js ~/.hyper.js
  echo "Done."
fi
