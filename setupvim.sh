#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/syntastic.git

#pip install pylint

git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
