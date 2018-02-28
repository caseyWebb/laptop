#!/usr/bin/env zsh

cd ~/.laptop

if git status | grep -q .czrc; then
  git add .czrc
  sh -c "git commit -m \":factory: (commitizen) [automated] sync commitizen settings\" && git push" 2>&1 > /dev/null
fi

cd -
