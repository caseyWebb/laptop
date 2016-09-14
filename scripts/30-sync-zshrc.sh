#!/usr/bin/env zsh

cd ~/.laptop

if git status | grep -q .zshrc; then
  git add .zshrc
  sh -c "cd ~/.laptop && git commit -m \"[automated] sync .zshrc\" && git push" 2>&1 > /dev/null
fi
