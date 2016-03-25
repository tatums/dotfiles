#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## 1 dotfiles.sh
## 2 homebrew
## 3 vim-setup.rb

sh ${DIR}/setup/lib/dotfiles.sh
sh ${DIR}/setup/lib/homebrew.sh
ruby ${DIR}/setup/lib/vim-setup.rb
