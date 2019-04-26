#!/bin/bash

cp .aliases ~
cp .bash_profile ~
cp .bash_prompt ~
cp .bashrc ~
cp .rubocop.yml ~
mkdir -p ~/.config
cp -r config/terminator  ~/.config/

## VIM
bash  ./setupvim.sh
cp .vimrc ~

## TMUX
mkdir -p ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
cp .tmux.conf.local ~
cp .tmux.conf ~
