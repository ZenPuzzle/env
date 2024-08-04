#!/usr/bin/bash
env_root=`realpath "$PWD"`
dotfiles=("tmux.conf" "tmux" "aider.conf.yml")

for file in "${dotfiles[@]}"; do
  if [ -e "$HOME/.$file" ]; then
    echo "Warning: ~/.$file already exists."
  else
    ln -fs "$env_root/dotfiles/$file" "$HOME/.$file"
  fi
done

if command -v vim &> /dev/null; then
  ln -fs "$env_root/dotfiles/vim" "$HOME/.vim"
  ln -fs "$env_root/dotfiles/vimrc" "$HOME/.vimrc"
else
  echo "Warning: Vim executable not found. Skipping links for vim and vimrc."
fi

if command -v hyper &> /dev/null; then
  ln -fs "$env_root/dotfiles/hyper.js" "$HOME/.hyper.js"
else
  echo "Warning: Hyper executable not found. Skipping link for hyper.js."
fi

if command -v alacritty &> /dev/null; then
  ln -fs "$env_root/dotfiles/alacritty.yml" "$HOME/.alacritty.yml"
else
  echo "Warning: Alacritty executable not found. Skipping link for alacritty.yml."
fi
