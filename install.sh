#!/usr/bin/bash
env_root=`realpath .`
dotfiles=("vimrc" "vim" "tmux.conf" "tmux" "hyper.js")

for file in "${dotfiles[@]}"; do
  if [ -e "$env_root/dotfiles/$file" ]; then
    echo "Warning: ~/.$file already exists."
  else
    ln -fs "$env_root/dotfiles/$file" ~/.$file
  fi
done
