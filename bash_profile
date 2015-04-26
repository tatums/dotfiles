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



## import bashrc file ##
[[ -r ~/.bashrc ]] && . ~/.bashrc


# ACCuCREV --- New environment setting added by AccuRev on Mon Feb 25 21:54:48 CST 2013 1.
if [ -f /Users/tatum/Applications/AccuRev/bin ]; then
  PATH="${PATH}:/Users/tatum/Applications/AccuRev/bin"
  export PATH
fi


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


eval "$(rbenv init -)"
export PATH=/usr/local/sbin:$PATH

##  Chef
PATH=$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH

