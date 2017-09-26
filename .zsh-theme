local host="%{$fg_bold[green]%}%n@%m%{$reset_color%}"
local pwd="%{$fg_bold[cyan]%}%c%{$reset_color%}"

function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -eq 130 ]]; then
    echo "💀 "
  elif [[ $LAST_EXIT_CODE -ne 0 ]]; then
    echo "💩 "
  fi
}

get_npm_package_version() {
  local JSON=''
  if [[ -f 'package.json' ]]; then
    echo " ($(cat package.json | jq -c '{version: .version}' | sed 's/["{}:]//g' | sed 's/version//'))"
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg_bold[red]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[magenta]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%} \u00B1"

PROMPT='
${host}$(git_prompt_info)%{$fg_bold[blue]%}$(get_npm_package_version)%{$reset_color%} in ${pwd}
%{$reset_color%}> '

RPROMPT='$(check_last_exit_code) %{$fg_bold[black]%} $(date "+%X")%{$reset_color%}'