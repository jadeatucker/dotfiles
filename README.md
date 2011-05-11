Dotfiles
====
Configuration files for bash, vim and ssh.

Contains useful aliases, vim colorschemes and plugins, and customized
bash prompt.

Getting Started
---

Download the dotfiles with Git:

  cd ~/bin
  git clone git@github.com:jadeatucker/dotfiles.git

Edit your bashrc file and add the following at the end:

  . ~/bin/dotfiles/bashrc

or symlink your bashrc file:

  ln -s ~/.bashrc ~/bin/dotfiles/bashrc

---
Symlink other dotfiles as needed:

Vim:

  ln -s ~/.gvimrc ~/bin/dotfiles/vim/gvimrc
  ln -s ~/.vimrc ~/bin/dotfiles/vim/vimrc
  ln -s ~/.vim ~/bin/dotfiles/vim

Ssh:

  ln -s ~/.ssh/config ~/bin/dotfiles/ssh/config

Wrapping up
---

Source your .bashrc file:

  source ~/.bashrc