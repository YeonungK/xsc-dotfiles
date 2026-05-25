#!/usr/bin/env bash
set -e

SCRIPT_DIR=$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)
ROOT_DIR="${SCRIPT_DIR}/../"
DOTFILES="${ROOT_DIR}/dotfiles/"

## Apt
#sudo apt-get update
#sudo apt-get install -y \
#    ack \
#    exuberant-ctags
#
## Python
#pip3 install -U pip
#pip3 install -U python-lsp-server
#pip3 install -U robotframework-robocop

# Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s "${DOTFILES}/vimrc" "${HOME}/.vimrc"

# Tmux
ln -s "${DOTFILES}/tmux.conf" "${HOME}/.tmux.conf"

# Bashrc
ln -s "${DOTFILES}/bashrc" "${HOME}/.bashrc"
