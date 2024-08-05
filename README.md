# My Dotfiles Repository

Welcome to my dotfiles repository! This repository contains configuration files for various tools and applications I use on my system. These files are managed using a simple script that sets up symlinks to the files in this repository.

## Installation

To install the dotfiles, follow these steps:

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/ZenPuzzle/dotfiles.git
   cd dotfiles
   ```

2. Run the installation script:
   ```sh
   ./install.sh
   ```

The script will create symlinks in your home directory for the specified dotfiles. If a file already exists in your home directory, it will print a warning and skip creating the symlink for that file.

## Files

Here's a list of the files managed by this repository:

- `tmux.conf`
- `tmux`
- `aider.conf.yml`
- `vim` (directory)
- `vimrc`
- `hyper.js`
- `alacritty.yml`

## Tools

The following tools have their configuration files managed by this repository:

- `tmux`
- `vim`
- `hyper`
- `alacritty`
- `aider`

## Notes

- The installation script checks for the existence of the target files before creating symlinks.
- If a tool executable is not found, the corresponding symlink will not be created, and a warning will be printed.
- For `vim` to work properly, YouCompleteMe needs to be installed separately by running `python install.py` in the YouCompleteMe directory.

## Contributing

Feel free to fork this repository and submit pull requests with improvements or additional dotfiles.

---

That's it! If you have any questions or need further assistance, feel free to open an issue.
