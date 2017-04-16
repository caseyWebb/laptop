export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export DISPLAY=":0.0"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/n/bin"
export PATH=$PATH:$(yarn global bin)

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="custom"
export ENABLE_CORRECTION=true
export COMPLETION_WAITING_DOTS=true
export DISABLE_UNTRACKED_FILES_DIRTY=false
export COMPLETION_WAITING_DOTS=true
export DISABLE_UPDATE_PROMPT=true
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export EDITOR="nano"

source $ZSH/oh-my-zsh.sh
source <(npm completion)

plugins=(git zsh-autosuggestions)

chmod +x $HOME/.laptop/scripts/*.sh

for script in $HOME/.laptop/scripts/20-*.sh; do source $script; done
for script in $HOME/.laptop/scripts/30-*.sh; do screen -dm -S Shared $script; done

curl -s https://api.github.com/zen | sed 's/\n//'
