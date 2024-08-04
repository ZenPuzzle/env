#!/usr/bin/bash
env_root=`realpath .`
ln -fs "$env_root/dotfiles/vimrc" ~/.vimrc
ln -fs "$env_root/dotfiles/vim" ~/.vim
ln -fs "$env_root/dotfiles/tmux.conf" ~/.tmux.conf
ln -fs "$env_root/dotfiles/tmux" ~/.tmux
ln -fs "$env_root/dotfiles/hyper.js" ~/.hyper.js
