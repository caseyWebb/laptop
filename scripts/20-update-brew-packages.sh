#!/usr/bin/env zsh

zmodload zsh/datetime

function _current_epoch() {
  echo $(( $EPOCHSECONDS / 60 / 60 / 24 ))
}

function _update_brew_update() {
  echo "LAST_EPOCH=$(_current_epoch)" >! ~/.brew-update
}

function _upgrade_brew() {
  brew update
  brew upgrade
  brew cask update
  _update_brew_update
}

if [ -f ~/.brew-update ]; then
  . ~/.brew-update

  if [[ -z "$LAST_EPOCH" ]]; then
    _update_brew_update && return 0;
  fi

  epoch_diff=$(($(_current_epoch) - $LAST_EPOCH))

  if [ $epoch_diff -gt 1 ]; then
    echo "[Homebrew] Would you like to check for updates? [Y/n]: \c"
    read line
    if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
      _upgrade_brew
    else
      _update_brew_update
    fi
  fi
else
  _update_brew_update
fi

brew list > ~/.laptop/brew-packages.txt
brew cask list > ~/.laptop/brew-cask-packages.txt

cd ~/.laptop
if git status | grep -q brew-packages\.txt || git status | grep -q brew-cask-packages\.txt; then
  git add brew-packages.txt
  git add brew-cask-packages.txt
  sh -c "cd ~/.laptop && git commit -m \"[automated] sync brew (cask) packages\" && git push" &
fi
