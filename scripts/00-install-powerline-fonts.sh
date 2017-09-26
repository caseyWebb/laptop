#!/bin/bash

mkdir -p $TMPDIR/powerline-fonts
git clone https://github.com/powerline/fonts.git $TMPDIR/powerline-fonts
chmod +x $TMPDIR/powerline-fonts/install.sh
$TMPDIR/powerline-fonts/install.sh
rm -rf $TMPDIR/powerline-fonts
