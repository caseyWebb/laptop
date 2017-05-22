alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles NO"

alias copy_public_key="cat ~/.ssh/id_rsa.pub | pbcopy"

alias generate_secure_string="openssl rand -base64 32"

alias y="yarn"
alias ya="yarn add"
alias yd="yarn add -D"
alias yr="yarn remove"

function yat {
  yarn add $1
  yarn add -D @types/$1
}

function yrt {
  yarn remove $1 @types/$1
}
