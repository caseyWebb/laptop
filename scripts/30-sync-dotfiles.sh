#!/usr/bin/env zsh

cd ~/.laptop

if git status | grep -q dotfiles; then
  git add dotfiles/
  sh -c "git commit -m \":factory: (dotfiles) [automated] sync dotfiles\" && git push" 2>&1 > /dev/null
fi

cd -
