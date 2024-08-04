#!/usr/bin/bash
env_root=`realpath .`
dotfiles=("vimrc" "vim" "tmux.conf" "tmux" "hyper.js" "aider.conf.yml")

for file in "${dotfiles[@]}"; do
  if [ -e "$HOME/.$file" ]; then
    echo "Warning: ~/.$file already exists."
  else
    ln -fs "$env_root/dotfiles/$file" "$HOME/.$file"
  fi
done
