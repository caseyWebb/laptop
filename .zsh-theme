local host="%{$fg_bold[green]%}%n@%m%{$reset_color%}"
local pwd="%{$fg_bold[cyan]%}%c%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg_bold[red]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%} \u00B1"

PROMPT='
${host}$(git_prompt_info) in ${pwd}
%{$reset_color%}> '
