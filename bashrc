
GIT_PROMPT_THEME=Tatum
source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"

# Don't list the same command more then once in history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it


# http://direnv.net/
eval "$(direnv hook bash)"

# Enable bash completion for aws cli
complete -C '/usr/local/bin/aws_completer' aws

