#!/bin/bash

cd ~/bin/dotfiles
git submodule update --init --recursive

cd ~/
declare -A links

links["$HOME/bin/dotfiles/vim"]="$HOME/.vim"
links["$HOME/bin/dotfiles/vim/vimrc"]="$HOME/.vimrc"
links["$HOME/bin/dotfiles/ruby/irbrc"]="$HOME/.irbrc"
links["$HOME/bin/dotfiles/ruby/gemrc"]="$HOME/.gemrc"
links["$HOME/bin/dotfiles/gitconfig"]="$HOME/.gitconfig"
links["$HOME/bin/dotfiles/tmux.conf"]="$HOME/.tmux.conf"

for k in "${!links[@]}"; do
  v="${links["$k"]}"
  if [[ ! -e "$v" ]]; then
    ln -s "$k" "$v"
  fi
done

cat ~/.bashrc | grep -q "source ~/bin/dotfiles/bashrc"
if [[ ! $? -eq  0 ]]; then
  echo "source ~/bin/dotfiles/bashrc" >> .bashrc
fi
