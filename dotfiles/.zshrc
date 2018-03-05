export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export DISPLAY=":0.0"
export EDITOR="code --new-window --wait"

export GOPATH=$HOME/Code/go
export N_PREFIX="$HOME/.n"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/caseywebb/n/bin"
PATH+=:$N_PREFIX/bin
PATH+=:$(yarn global bin) # must come after node
PATH+=:$GOPATH/bin

export ZSH=~/.oh-my-zsh
export ENABLE_CORRECTION=true
export COMPLETION_WAITING_DOTS=true
export DISABLE_UNTRACKED_FILES_DIRTY=false
export COMPLETION_WAITING_DOTS=true
export DISABLE_UPDATE_PROMPT=true

# zsh builtin to re-run last line. dangerous. do not want. use `!!`.
disable r

source $ZSH/oh-my-zsh.sh

plugins=(git zsh-autosuggestions)

ssh-add ~/.ssh/id_rsa &>/dev/null

. `brew --prefix`/etc/profile.d/z.sh

eval "$(rbenv init -)"

chmod +x ~/.laptop/scripts/*.sh

for script in ~/.laptop/scripts/20-*.sh; do source $script; done
for script in ~/.laptop/scripts/30-*.sh; do screen -dm -S Shared $script; done

[ -f /Users/casey/.travis/travis.sh ] && source /Users/casey/.travis/travis.sh

when c --calendar_today_style="bold,fgyellow"
when w --no-header

cd ~/Code

autoload -U promptinit; promptinit
prompt spaceship
