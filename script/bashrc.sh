#!/bin/bash

if [ ! -d "backup" ]
then
  echo 'Backup directory must exist.'
  exit 255
fi

current_time=$(date +%Y%m%d-%H%M%S)
if [ -d $HOME"/.bashrc" -o -f $HOME"/.bashrc" ]
then
  echo 'Existing file moved to backup directory.'
  mv $HOME"/.bashrc" backup/bashrc-$current_time
fi

exit 0
