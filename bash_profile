export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR='vim'
export PATH="$HOME/bin:$PATH"


## bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


## enable nodenv
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi


## autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


# http://direnv.net/
eval "$(direnv hook bash)"

# Enable bash completion for aws cli
complete -C '/usr/local/bin/aws_completer' aws

# rbenv
eval "$(rbenv init -)"


# Go lang
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bashrc,path,bash_alias,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Puts homebrew right up front
#
# This fixes a problem where a ruby executable will
# execute before a homebrew installed version.  A good example
# is the heroku cli.  There is a legacy gem and a newer node version.
# If you have the ruby gem installed anywhere .rbenv will take precedence
# which is not desired.
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH
