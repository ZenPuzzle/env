#!/usr/bin/bash
set -eu
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

if ! command -v nvim &> /dev/null; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install neovim
  else
    sudo apt-get install neovim python3-neovim -y
  fi
fi

if ! command -v conda &> /dev/null; then
    mkdir -p ~/miniconda3
    if [[ "$OSTYPE" == "darwin"* ]]; then
      curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
    else
      wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    fi
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm ~/miniconda3/miniconda.sh
    source miniconda3/bin/activate
    conda init --all
fi

