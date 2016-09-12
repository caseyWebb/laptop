#!/usr/bin/env zsh

zmodload zsh/datetime

function _current_epoch() {
  echo $(( $EPOCHSECONDS / 60 / 60 / 24 ))
}

function _update_brew_update() {
  echo "LAST_EPOCH=$(_current_epoch)" >! ~/.brew-update
}

function _upgrade_brew_packages() {
  brew update && brew upgrade
  brew cask update
  _update_brew_update
}

epoch_target=$UPDATE_BREW_DAYS
if [[ -z "$epoch_target" ]]; then
  # Default to old behavior
  epoch_target=13
fi

if [ -f ~/.brew-update ]
then
  . ~/.brew-update

  if [[ -z "$LAST_EPOCH" ]]; then
    _update_brew_update && return 0;
  fi

  epoch_diff=$(($(_current_epoch) - $LAST_EPOCH))
  if [ $epoch_diff -gt $epoch_target ]
  then
    if [ "$DISABLE_UPDATE_PROMPT" = "true" ]
    then
      _upgrade_brew_packages
    else
      echo "[Homebrew] Would you like to check for updates? [Y/n]: \c"
      read line
      if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
        _upgrade_brew_packages
      else
        _update_brew_update
      fi
    fi
  fi
else
  _update_brew_update
fi