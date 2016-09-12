#!/bin/bash

if [ ! -d "$HOME/.laptop" ]; then
  curl https://github.com/caseyWebb/laptop.tar.gz | tar xf -C $HOME/.laptop
fi
