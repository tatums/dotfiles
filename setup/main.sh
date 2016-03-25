#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## 1 dotfiles.sh
## 2 homebrew
## 3 vim-setup.rb

sh ${DIR}/lib/dotfiles.sh
sh ${DIR}/lib/homebrew.sh
ruby ${DIR}/lib/vim-setup.rb
