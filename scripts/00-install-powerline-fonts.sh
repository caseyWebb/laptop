#!/bin/bash

mkdir -p /tmp/powerline-fonts
git clone https://github.com/powerline/fonts.git /tmp/powerline-fonts
chmod +x /tmp/powerline-fonts/install.sh
/tmp/powerline-fonts/install.sh
rm -rf /tmp/powerline-fonts
