# The following lines were added by Docker Desktop to add commands to your PATH.
export PATH="$PATH:/Users/tatum/.docker/bin"
# End of Docker Desktop section.

# ~/.zprofile
#
#    The load order is:
#
#        $HOME/.zshenv
#        $HOME/.zprofile
#        $HOME/.zshrc
#
# Loaded for login shells after .zshenv.
# Ideal place for PATH and environment initialization.

# Homebrew (Apple Silicon)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Deduplicate PATH entries automatically
typeset -U path PATH

# Personal binaries
path+=("$HOME/.bin")
path+=("$HOME/.local/bin")

# Bun
export BUN_INSTALL="$HOME/.bun"
path+=("$BUN_INSTALL/bin")

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
path+=("$PYENV_ROOT/bin")

# Rust / Cargo
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# Added by Antigravity CLI installer
export PATH="/Users/tatum/.local/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/tatum/.lmstudio/bin"
