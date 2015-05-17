#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc bash_alias bash_profile irbrc inputrc gemrc vimrc vim gitconfig gitignore_global"  # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "\n\n Creating $olddir for backup of any existing dotfiles in ~\n\n"
mkdir -p $olddir
echo "\n...done"

# change to the dotfiles directory
echo "\n\n Changing to the $dir directory \n\n"
cd $dir
echo "\n...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "\n\nMoving any existing dotfiles from ~ to $olddir\n\n"
    mv ~/.$file ~/dotfiles_old/
    echo "\n\nCreating symlink to $file in home directory.\n\n"
    ln -s $dir/$file ~/.$file
done

echo "\n\n Setting up Vundle \n\n"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "\n\n Installing Plugins \n\n"
vim +PluginInstall +qall
