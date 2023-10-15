#!/usr/bin bash
env_root=`realpath .`
ln -s "$env_root/dotfiles/vimrc" ~/.vimrc
ln -s "$env_root/dotfiles/vim" ~/.vim
ln -s "$env_root/dotfiles/tmux.conf" ~/.tmux.conf
ln -s "$env_root/dotfiles/tmux" ~/.tmux
