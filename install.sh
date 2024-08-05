#!/usr/bin/bash
env_root=`realpath "$PWD"`

create_link() {
  local file=$1
  local executable=$2
  if [ -e "$HOME/.$file" ]; then
    echo "Warning: ~/.$file already exists."
  elif [ -n "$executable" ] && ! command -v $executable &> /dev/null; then
    echo "Warning: $executable executable not found. Skipping link for $file."
  else
    ln -fs "$env_root/dotfiles/$file" "$HOME/.$file"
  fi
}

dotfiles=("tmux.conf" "tmux" "aider.conf.yml" "vim" "vimrc" "hyper.js" "alacritty.yml")
executables=("" "" "aider" "vim" "vim" "hyper" "alacritty")

for i in "${!dotfiles[@]}"; do
  create_link "${dotfiles[$i]}" "${executables[$i]}"
done
