#!/bin/bash

mkdir $HOME/.ssh
cp /keybase/private/*/keys/id_* $HOME/.ssh
chmod -R 700 $HOME/.ssh
