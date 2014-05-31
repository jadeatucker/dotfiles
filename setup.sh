#!/bin/bash

cd ~/bin/dotfiles
git submodule update --init --recursive

cd ~/
ln -s ~/bin/dotfiles/vim ~/.vim
ln -s ~/bin/dotfiles/vim ~/bin/dotfiles/vim/.vimrc
ln -s ~/bin/dotfiles/ruby/irbrc ~/.irbrc
ln -s ~/bin/dotfiles/ruby/gemrc ~/.gemrc
ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig
ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf

cat ~/.bashrc | grep -q "source ~/bin/dotfiles/bashrc"
if [[ ! $? -eq  0 ]]; then
  echo "source ~/bin/dotfiles/bashrc" >> .bashrc
fi
