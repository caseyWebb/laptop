#!/usr/bin/env zsh

cd ~/.laptop

if git status | grep -q vscode.settings.json; then
  git add vscode.settings.json
  sh -c "cd ~/.laptop && git commit -m \":factory: (vscode) [automated] sync vscode settings\" && git push" 2>&1 > /dev/null
fi

cd -
