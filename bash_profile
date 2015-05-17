PATH=/usr/local/bin:$PATH

if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi

export EDITOR='vim'


if [ -f /usr/local/bin/brew ]; then

  ## bash completion
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  ## autojump
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

if [ -f ~/.local_exports ]; then
   source ~/.local_exports
fi


## import bashrc file ##
[[ -r ~/.bashrc ]] && . ~/.bashrc


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
  export PATH=/usr/local/sbin:$PATH
fi

