PATH=/usr/local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bashrc,path,bash_alias,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


export PATH="$HOME/bin:$PATH"

export EDITOR='vim'

if [ -f /usr/local/bin/brew ]; then

  ## bash completion
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  ## autojump
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi



[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
  export PATH=/usr/local/sbin:$PATH
fi

eval "$(docker-machine env default)"
