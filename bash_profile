PATH=/usr/local/bin:$PATH

if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi

if [ -f ~/.profile ]; then
   source ~/.profile
fi

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export EDITOR='vim'


if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


## import bashrc file ##
[[ -r ~/.bashrc ]] && . ~/.bashrc



# ACCuCREV --- New environment setting added by AccuRev on Mon Feb 25 21:54:48 CST 2013 1.
PATH="${PATH}:/Users/tatum/Applications/AccuRev/bin"
export PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
