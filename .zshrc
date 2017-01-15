export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export DISPLAY=":0.0"

export NPM_PACKAGES=~/.npm
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"
export YARN_PACKAGES=$(yarn global bin)
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$NPM_PACKAGES/bin:$YARN_PACKAGES"
export N_PREFIX=~/n; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

export ZSH=~/.oh-my-zsh
export ZSH_THEME="custom"
export ENABLE_CORRECTION=true
export COMPLETION_WAITING_DOTS=true
export DISABLE_UNTRACKED_FILES_DIRTY=false
export COMPLETION_WAITING_DOTS=true
export DISABLE_UPDATE_PROMPT=true

export EDITOR="/usr/local/bin/atom --new-window --wait"

source $ZSH/oh-my-zsh.sh

plugins=(git)

ssh-add ~/.ssh/id_rsa &>/dev/null

. `brew --prefix`/etc/profile.d/z.sh

chmod +x ~/.laptop/scripts/*.sh

for script in ~/.laptop/scripts/20-*.sh; do source $script; done
for script in ~/.laptop/scripts/30-*.sh; do screen -dm -S Shared $script; done
