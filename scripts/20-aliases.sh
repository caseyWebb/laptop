alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles NO"

alias copy_public_key="cat ~/.ssh/id_rsa.pub | pbcopy"

alias generate_secure_string="openssl rand -base64 32"

alias flush_dns_cache="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

alias vsdiff="code --new-window --diff"
alias y="yarn"
alias ya="yarn add"
alias yd="yarn add -D"
alias yr="yarn remove"
alias serve="npx http-server"

function clone {
  git clone gh:$1
}

function yat {
  yarn add $1
  yarn add -D @types/$1
}

function yrt {
  yarn remove $1 @types/$1
}

function ramd {
  SIZE_MB=$1
  DIR=$2
  SIZE=`echo "$1 * 2048" | bc -l`
  MIN_SIZE_MB=`echo "$(du -s $DIR | cut -f 1) / 2048" | bc -l`

  if (( $SIZE_MB < $MIN_SIZE_MB ))
    then
      echo "Minimum $(printf "%.0f" $MIN_SIZE_MB)MB required to create RAMDisk for $DIR"
      return
  fi

  mv $DIR $DIR.copy

  DISK=`echo $(hdiutil attach -nobrowse -nomount ram://$SIZE)`
  diskutil eraseVolume HFS+ RAM $DISK
  diskutil unmount $DISK
  mkdir -p $DIR
  diskutil mount -mountPoint $DIR $DISK

  # cheap way to prevent errors 
  touch $DIR.copy/foo $DIR.copy/.foo
  mv $DIR.copy/* $DIR.copy/.* $DIR
  rm $DIR/foo $DIR/.foo
}

function unramd {
  DIR=$1

  mkdir -p $DIR.copy
  mv $DIR/* $DIR/.* $DIR.copy
  diskutil unmount $DIR
  rm -rf $DIR
  mv $DIR.copy $DIR
}

function porthog {
  PORT=$1
  echo `lsof -ti tcp:$PORT`
}

function freeport {
  PORT=$1
  PID=`lsof -ti tcp:$PORT`
  if [ -z "$PID"]; then
    echo "No process running on port $PORT"
  else
    kill -KILL $PID
  fi
}