export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export DISPLAY=":0.0"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/caseywebb/n/bin"

export ZSH=~/.oh-my-zsh
export ZSH_THEME="custom"
export ENABLE_CORRECTION=true
export COMPLETION_WAITING_DOTS=true
export DISABLE_UNTRACKED_FILES_DIRTY=false
export COMPLETION_WAITING_DOTS=true
export DISABLE_UPDATE_PROMPT=true
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export EDITOR="atom --new-window --wait"

source $ZSH/oh-my-zsh.sh
source <(npm completion)

plugins=(git)

ssh-add ~/.ssh/id_rsa &>/dev/null

. `brew --prefix`/etc/profile.d/z.sh

chmod +x ~/.laptop/scripts/*.sh

for script in ~/.laptop/scripts/20-*.sh; do source $script; done
for script in ~/.laptop/scripts/30-*.sh; do screen -dm -S Shared $script; done
