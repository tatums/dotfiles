#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

packages="
openssl
git
vim
bash-completion
bash-git-prompt
nvm
rbenv
ruby-build
autojump
the_silver_searcher
nmap"

options=("YES" "NO")

for package in $packages; do

  printf "Do you want to install ${RED}$package${NC}?\n"
  read -r -p "Please confirm with [y/N] " response
  case $response in
    [yY][eE][sS]|[yY])
      echo "${GREEN} installing $package${NC}"
      brew install $package
      ;;
    *)
      echo "${YELLOW} skipping $package${NC}"
      ;;
  esac
done


