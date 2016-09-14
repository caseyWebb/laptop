#!/usr/bin/env zsh

apm list --installed --bare > ~/.laptop/atom-packages.txt

cd ~/.laptop

if git status | grep -q atom-packages\.txt; then
  git add atom-packages.txt
  sh -c "cd ~/.laptop && git commit -m \"[automated] sync atom packages\" && git push" 2>&1 > /dev/null
fi

if git status | grep -q \.atom; then
  git add .atom
  sh -c "cd ~/.laptop && git commit -m \"[automated] sync atom config\" && git push" 2>&1 > /dev/null
fi
