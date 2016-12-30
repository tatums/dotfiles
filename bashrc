
# Don't list the same command more then once in history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it



if [ -f /usr/local/share/gitprompt.sh ]; then
  GIT_PROMPT_THEME=Tatum
  . /usr/local/share/gitprompt.sh
fi
