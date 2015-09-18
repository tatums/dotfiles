PATH=$PATH:/usr/local/bin # homebrew - here for non-interactive shell


if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then

  ## TODO Add to setup.sh
  ## ln -s ~/dotfiles/Tatum.bgptheme /usr/local/opt/bash-git-prompt/share/themes/Tatum.bgptheme
  GIT_PROMPT_THEME=Tatum
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi



# Don't list the same command more then once in history
HISTCONTROL=ignoreboth

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
