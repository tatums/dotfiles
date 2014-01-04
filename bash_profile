PATH=/usr/local/bin:$PATH

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1='\u@\h \[\033[1;32m\]\w\[\033[0m\]$(parse_git_branch)$ '

if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export EDITOR='vim'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# ACCuCREV --- New environment setting added by AccuRev on Mon Feb 25 21:54:48 CST 2013 1.
PATH="${PATH}:/Users/tatum/Applications/AccuRev/bin"
export PATH

## import bashrc file ##
[[ -r ~/.bashrc ]] && . ~/.bashrc

