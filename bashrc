PATH=$PATH:/usr/local/bin # homebrew - here for non-interactive shell


if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then

  #GIT_PROMPT_THEME=Solarized
  #GIT_PROMPT_THEME=Single_line_openSUSE
  #GIT_PROMPT_THEME=Single_line

  #GIT_PROMPT_THEME=Custom.bgptemplate
  #GIT_PROMPT_THEME=Default
  #GIT_PROMPT_THEME=Default_NoExitState
  #GIT_PROMPT_THEME=Default_NoExitState_Ubuntu
  #GIT_PROMPT_THEME=Default_Ubuntu
  #GIT_PROMPT_THEME=Single_line
  #GIT_PROMPT_THEME=Single_line_NoExitState_openSUSE
  #GIT_PROMPT_THEME=Single_line_Ubuntu
  #GIT_PROMPT_THEME=Single_line_openSUSE
  #GIT_PROMPT_THEME=Solarized
  #GIT_PROMPT_THEME=Solarized_NoExitState
  #GIT_PROMPT_THEME=Solarized_NoExitState_Ubuntu
  #GIT_PROMPT_THEME=Solarized_Ubuntu
  GIT_PROMPT_THEME=Custom
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi



# Don't list the same command more then once in history
HISTCONTROL=ignoreboth

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
