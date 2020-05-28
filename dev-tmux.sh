#!/bin/sh

#Opens a development environment that I like in tmux at the given directory
#main pane opens in vim (using nerd tree
#second pane launches with npm start 
#third pane launches 
if [ "$1" != "" ]; then
  cd $1 
  tmux new-session -s 'dev' 'vim' \; split-window -h 'npm start' \; split-window -v \; resize-pane -R 40 \; attach
else
  echo "Please enter a directory"
fi

