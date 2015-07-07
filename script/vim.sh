#!/bin/bash

if [ ! -d "backup" ]
then
  echo 'Backup directory must exist.'
  exit 255
fi

current_time=$(date +%Y%m%d-%H%M%S)
if [ -d $HOME"/.vim" -o -f $HOME"/.vim" ]
then
  echo 'Existing file moved to backup directory.'
  mv $HOME"/.vim" backup/vim-$current_time
fi

if [ -d "vim" ]
then
  ln -s $PWD/vim $HOME/.vim
else
  echo 'No template file.'
  exit 1
fi

exit 0
