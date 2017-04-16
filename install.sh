#!/bin/bash

read -s -p "Enter sudo password: " password
echo

if ! command -v git > /dev/null 2>&1; then
  echo "Installing git..."
  echo $password | sudo -S apt-get install -y git
  source $HOME/.bashrc
  git config --global user.name "Casey Webb"
  git config --global user.email "notcaseywebb@gmail.com"
  echo "Done."
else
  echo "git already installed."
fi

if [ ! -d $HOME/.laptop ]; then
  git clone https://github.com/caseyWebb/laptop.git $HOME/.laptop
fi

cd $HOME/.laptop
echo "Checking out debian branch..."
git checkout debian
git pull
cd -

echo $password | sudo -S chmod +x $HOME/.laptop/root_scripts/*.sh
echo $password | sudo -S chmod +x $HOME/.laptop/scripts/*.sh

echo $password | sudo -S $HOME/.laptop/root_scripts/00-install-zsh.sh

for s in $HOME/.laptop/scripts/*.sh; do source $s; done

echo $password | sudo -S $HOME/.laptop/root_scripts/99-install-yarn.sh

zsh
