#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

>&2 echo "Symlinking $HOME/.vimrc to $SCRIPT_DIR/vimrc.minimal"
ln -s "$SCRIPT_DIR/vimrc.minimal" "$HOME/.vimrc" 
>&2 echo "Symlinking $HOME/.vim to $SCRIPT_DIR"
ln -s "$SCRIPT_DIR" "$HOME/.vim" 

>&2 echo "Installing plugins..."
vim +PlugInstall +qall

>&2 echo "All done."
