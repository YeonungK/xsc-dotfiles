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

rm -f ~/.vimrc
ln -s "${DOTFILES}/vimrc" "${HOME}/.vimrc"

# Tmux
rm -f ~/.tmux.conf
ln -s "${DOTFILES}/tmux.conf" "${HOME}/.tmux.conf"

# Bashrc
rm -f ~/.bashrc
ln -s "${DOTFILES}/bashrc" "${HOME}/.bashrc"
