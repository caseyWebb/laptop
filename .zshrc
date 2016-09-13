export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export ZSH=~/.oh-my-zsh
export ZSH_THEME="custom"
export ENABLE_CORRECTION="true"
export COMPLETION_WAITING_DOTS="true"
export DISABLE_UNTRACKED_FILES_DIRTY="false"
export COMPLETION_WAITING_DOTS="true"
export DISABLE_UPDATE_PROMPT=true

source $ZSH/oh-my-zsh.sh

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
export NPM_PACKAGES="${HOME}/.npm"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$NPM_PACKAGES/bin"

export DISPLAY=":0.0"

plugins=(git z)

ssh-add ~/.ssh/id_rsa &>/dev/null

source ~/.laptop/scripts/20-aliases.sh
source ~/.laptop/scripts/20-update-brew-packages.sh

cd ~
