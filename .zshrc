export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export SSH_KEY_PATH="~/.ssh/id_rsa"

export ZSH=~/.oh-my-zsh
export ZSH_THEME="custom"
export ENABLE_CORRECTION="true"
export COMPLETION_WAITING_DOTS="true"
export DISABLE_UNTRACKED_FILES_DIRTY="false"
export COMPLETION_WAITING_DOTS="true"
export DISABLE_UPDATE_PROMPT=true

export NPM_PACKAGES="${HOME}/.npm"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$NPM_PACKAGES/bin"

export DISPLAY=":0.0"

plugins=(git z)

source $ZSH/oh-my-zsh.sh

alias wip='git add -A && git commit -m "WIP"'
alias rebase='git checkout master && git pull --rebase && git checkout - && git rebase -i master'
branch () { git checkout master && git pull --rebase && git checkout -b $1 & }

alias show-hidden-files="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide-hidden-files="defaults write com.apple.finder AppleShowAllFiles NO”

$HOME/.laptop/scripts/update-brew-packages.sh
