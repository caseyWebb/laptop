#!/bin/bash

if [ ! -a ~/.czrc ]; then
  echo "Linking .czrc..."
  ln -s ~/.laptop/.czrc ~/.czrc
  echo "Done."
fi
