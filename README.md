Dotfiles
====
Configuration files for bash, vim and ssh.

Contains useful aliases, vim colorschemes and plugins, and customized
bash prompt.

Getting Started
---

Install the dotfiles with Git:

    cd ~/bin
    git clone git@github.com:jadeatucker/dotfiles.git

Edit your bashrc file and add the following at the end:

    . ~/bin/dotfiles/bashrc

or symlink your bashrc file:

    ln -s ~/bin/dotfiles/bashrc ~/.bashrc 

You may need to load bashrc in your bash_profile.  Add the following to ~/.bash_profile:

    . ~/.bashrc

---
Symlink other dotfiles as needed.

Vim:

    ln -s ~/bin/dotfiles/vim/gvimrc ~/.gvimrc
    ln -s ~/bin/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/bin/dotfiles/vim ~/.vim

Ssh:

    ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

Ruby:
    ln -s ~/bin/dotfiles/ruby/irbrc ~/.irbrc
    ln -s ~/bin/dotfiles/ruby/rvmrc ~/.rvmrc

Git:
    ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig

Wrapping up
---

Source your .bashrc file to pull in the new configurations:

    . ~/.bashrc

