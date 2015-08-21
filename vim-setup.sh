#! /bin/bash
clear
echo "assumptions"
echo "- 1) Git is installed."
echo "- 2) a ruby version manager is installed. rbenv or RVM"
echo ""
echo ""


#curl -Lo- https://bit.ly/janus-bootstrap | bash


plugin_install_dir="~/.janus"
mkdir -p ~/.janus
plugins=( https://github.com/bogado/file-line.git https://github.com/bling/vim-airline.git )

cd $plugin_install_dir

for plugin in "${plugins[@]}"
do
  echo "installing $plugin"
  git clone $plugin
done
