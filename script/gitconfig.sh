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

exit 0
