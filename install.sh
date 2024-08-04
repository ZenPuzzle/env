#!/usr/bin/bash
env_root=`realpath .`
if [ -e "$env_root/dotfiles/vimrc" ]; then
  echo "Warning: ~/.vimrc already exists."
else
  ln -fs "$env_root/dotfiles/vimrc" ~/.vimrc
fi

if [ -e "$env_root/dotfiles/vim" ]; then
  echo "Warning: ~/.vim already exists."
else
  ln -fs "$env_root/dotfiles/vim" ~/.vim
fi

if [ -e "$env_root/dotfiles/tmux.conf" ]; then
  echo "Warning: ~/.tmux.conf already exists."
else
  ln -fs "$env_root/dotfiles/tmux.conf" ~/.tmux.conf
fi

if [ -e "$env_root/dotfiles/tmux" ]; then
  echo "Warning: ~/.tmux already exists."
else
  ln -fs "$env_root/dotfiles/tmux" ~/.tmux
fi

if [ -e "$env_root/dotfiles/hyper.js" ]; then
  echo "Warning: ~/.hyper.js already exists."
else
  ln -fs "$env_root/dotfiles/hyper.js" ~/.hyper.js
fi
