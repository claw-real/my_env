#!/bin/bash

cp .aliases ~
cp .bash_profile ~
cp .bash_prompt ~
cp .bashrc ~
cp .vimrc ~
cp .rubocop.yml ~
mkdir -p ~/.config
cp -r config/terminator  ~/.config/
bash  ./setupvim.sh
