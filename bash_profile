[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=/usr/local/bin:$PATH


function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1='\u@\h \[\033[1;32m\]\w\[\033[0m\]$(parse_git_branch)$ '
#export PS1="$txtpur\h\[\033[0;35m\]\w\[\033[0m\]$(parse_git_branch)$ "


if [ -f ~/.bash_alias ]; then
   source ~/.bash_alias
fi


[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export EDITOR='subl'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


# New environment setting added by AccuRev on Mon Feb 25 21:54:48 CST 2013 1.
# The unmodified version of this file is saved in /Users/tatum/.bash_profile586849700.
# Do NOT modify these lines; they are used to uninstall.
PATH="${PATH}:/Users/tatum/Applications/AccuRev/bin"
export PATH
# End comments by InstallAnywhere on Mon Feb 25 21:54:48 CST 2013 1.
