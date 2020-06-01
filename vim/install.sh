#!/bin/bash
SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

vim_target=$HOME/.vim

if [ ! -L "$vim_target" ]; then
  echo "VIM: Create a directory for vim configuraion on  $vim_target"
  echo
  mkdir -p $vim_target
fi

echo "VIM: Copying VIMRC file"
echo
cp $SCRIPTDIR/vimrc $HOME/.vim/vimrc

echo "VIM: Copying all Themes"
echo
mkdir -p $HOME/.vim/colors
cp $SCRIPTDIR/colors/* $HOME/.vim/colors/

echo "VIM: finished setup"
echo
