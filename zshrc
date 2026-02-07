# ZSHRC
#
#
#    This file is for interactive shell options.
#    i.e. When a real user (not a script) will be
#    interacting with a terminal.
#
#    If other programs will also need to access the
#    configuration then consider using ~/.zshenv
#    or ~/.zshprofile
#
#    The load order is:
#
#        /Users/tatum/.zshenv
#        /Users/tatum/.zprofile
#        /Users/tatum/.zshrc
#


# https://unix.stackexchange.com/questions/599641/why-do-i-have-duplicates-in-my-zsh-history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

export TERM=xterm-256color
export COLORTERM=truecolor


# https://askubuntu.com/questions/23630/how-do-you-share-history-between-terminals-in-zsh
setopt inc_append_history
setopt share_history


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

## direnv
eval "$(direnv hook zsh)"


# nodenv
eval "$(nodenv init -)"

# rbenv
eval "$(rbenv init - zsh)"




# https://github.com/sindresorhus/pure
#
#    Pretty, minimal and fast ZSH prompt
#
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
# prompt pure
prompt pure



# AWS CLI command completion
# https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html#cli-command-completion-linux
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# set VI editing mode
bindkey -v


# Load Angular CLI autocompletion.
# source <(ng completion script)


export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
