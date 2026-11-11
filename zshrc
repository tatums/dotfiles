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
# TERM is left to the terminal (Terminal.app sets xterm-256color, tmux sets tmux-256color).
export COLORTERM=truecolor
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# bat uses the terminal's ANSI palette so it matches whichever Terminal profile is active
export BAT_THEME=ansi

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
command -v goenv  >/dev/null && eval "$(goenv init -)"

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
# Use the terminal's 16 ANSI colors so fzf follows the active Terminal profile
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=16"

# Aliases
[ -f "$HOME/.shell_aliases" ] && source "$HOME/.shell_aliases"

# bun completions
[ -s "/Users/tatum/.bun/_bun" ] && source "/Users/tatum/.bun/_bun"

# Tab completion: case-insensitive, grouped by type, colored like ls.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle ':completion:*:git-checkout:*' sort false

# fzf-tab: fuzzy-searchable Tab menu (comment out this block to go back to the plain menu).
# Must load after compinit and before widget-wrapping plugins like zsh-syntax-highlighting.
if [ -f /opt/homebrew/opt/fzf-tab/share/fzf-tab/fzf-tab.zsh ]; then
  zstyle ':completion:*' menu no
  zstyle ':fzf-tab:*' fzf-flags --color=16
  zstyle ':fzf-tab:*' switch-group '<' '>'
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
  source /opt/homebrew/opt/fzf-tab/share/fzf-tab/fzf-tab.zsh
fi

# Fish-style suggestions (disabled for now; uncomment to re-enable).
# [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Command highlighting (disabled for now; uncomment to re-enable).
# zsh-syntax-highlighting must be sourced last so it wraps every other widget.
# [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
