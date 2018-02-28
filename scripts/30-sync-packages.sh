#!/usr/bin/env zsh

zmodload zsh/datetime

function _current_epoch() {
  echo $(( $EPOCHSECONDS / 60 / 60 / 24 ))
}

function _update_brew_update() {
  echo "LAST_EPOCH=$(_current_epoch)" >! ~/.laptop/.brew-update
}

function _upgrade_brew() {
  brew update
  brew upgrade
  brew cask update
  _update_brew_update
}

cd ~/.laptop

brew bundle dump --force

if git status | grep -q Brewfile; then
  git add Brewfile
  sh -c "cd ~/.laptop && git commit -m \":factory: (homebrew) [automated] sync packages\" && git push" 2>&1 > /dev/null
fi

if [ -f ~/.brew-update ]; then
  . ~/.laptop/.brew-update

  if [[ -z "$LAST_EPOCH" ]]; then
    _update_brew_update && return 0;
  fi

  epoch_diff=$(($(_current_epoch) - $LAST_EPOCH))

  if [ $epoch_diff -gt 1 ]; then
    _upgrade_brew &
  fi
else
  _update_brew_update
fi

cd -
