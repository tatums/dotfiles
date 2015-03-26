PATH=$PATH:/usr/local/bin # homebrew - here for non-interactive shell

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
#export PS1='\u@\h \[\033[1;32m\]\w\[\033[0m\]$(parse_git_branch)$ '
#export PS1='\[033[0;36m\w\033[0m\]$(parse_git_branch)$ '
export PS1='\[\033[1;32m\]\w\[\033[0m\]$(parse_git_branch)$ '

# Don't list the same command more then once in history
HISTCONTROL=ignoreboth

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
