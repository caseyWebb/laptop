compinit
autoload -U bashcompinit
bashcompinit

# NPM
source <(npm completion)

# Serverless Framework
[[ -f /Users/caseywebb/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/caseywebb/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
[[ -f /Users/caseywebb/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/caseywebb/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# UniversitySite (us)
_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(us --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=( $(compgen -f -- "${cur_word}" ) )
    fi

    return 0
}
complete -F _yargs_completions us

