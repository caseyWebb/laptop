alias wip='git add -A && git commit -m "WIP"'
rebase () { git checkout $1 && git pull --rebase && git checkout - && git rebase -i $1 & }
branch () { git checkout $1 && git pull --rebase && git checkout -b $2 & }

alias show-hidden="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide-hidden="defaults write com.apple.finder AppleShowAllFiles NO"

alias copy_public_key="cat ~/.ssh/id_rsa.pub | pbcopy"
