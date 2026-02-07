# ~/.zshrc
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
#        $HOME/.zshenv
#        $HOME/.zprofile
#        $HOME/.zshrc
#
#
# Interactive shell configuration only.

# History configuration
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

setopt HIST_FIND_NO_DUPS
setopt HIST_FCNTL_LOCK

# Terminal capabilities
export TERM=xterm-256color
export COLORTERM=truecolor
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Key bindings
bindkey -v   # vi mode

# Completion system
autoload -Uz compinit
compinit -C

autoload -Uz bashcompinit
bashcompinit

# AWS CLI completion
if command -v aws_completer >/dev/null; then
  complete -C "$(command -v aws_completer)" aws
fi

# Language environment managers
command -v pyenv  >/dev/null && eval "$(pyenv init -)"
command -v nodenv >/dev/null && eval "$(nodenv init -)"
command -v rbenv  >/dev/null && eval "$(rbenv init - zsh)"

# direnv
command -v direnv >/dev/null && eval "$(direnv hook zsh)"

# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && source /opt/homebrew/etc/profile.d/autojump.sh

# Prompt (Pure)
if command -v brew >/dev/null; then
  fpath+=("$(brew --prefix)/share/zsh/site-functions")
fi

autoload -U promptinit
promptinit
prompt pure

# fzf
[ -f "$HOME/.fzf.zsh" ] && source "$HOME/.fzf.zsh"

# Aliases
[ -f "$HOME/.shell_aliases" ] && source "$HOME/.shell_aliases"
