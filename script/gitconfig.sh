#!/bin/bash

if [ ! -d "backup" ]
then
  echo 'Backup directory must exist.'
  exit 255
fi

if [ -f $HOME"/.gitconfig" ]
then
  echo 'Existing file moved to backup directory.'
  mv $HOME"/.gitconfig" backup/
fi

if [ -f "gitconfig" ]
then
  ln -s $PWD/gitconfig $HOME/.gitconfig
else
  echo 'No template file.'
  exit 1
fi

exit 0
