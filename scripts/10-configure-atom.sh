#!/bin/bash

echo "Configuring atom..."
cd ~/.atom
rm $(ls ~/.laptop/.atom)
ln -s ~/.laptop/.atom/* ~/.atom

cd -
