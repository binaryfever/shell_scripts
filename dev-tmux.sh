#!/bin/sh
cd ~/Documents/Projects
tmux new-session -s 'dev' \; split-window -h \; split-window -v \; resize-pane -R 40 \; attach
