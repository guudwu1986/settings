#!/bin/bash

if [ ! -d "backup" ]
then
  echo 'Backup directory must exist.'
  exit 255
fi

current_time=$(date +%Y%m%d-%H%M%S)
if [ -f $HOME"/.gitconfig" ]
then
  echo 'Existing file moved to backup directory.'
  mv $HOME"/.gitconfig" backup/gitconfig-$current_time
fi

if [ -f "gitconfig" ]
then
  ln -s $PWD/gitconfig $HOME/.gitconfig
else
  echo 'No template file.'
  exit 1
fi

exit 0
