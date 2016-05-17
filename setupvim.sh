#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
#git submodule add -f git://github.com/rodjek/vim-puppet.git .vim/bundle/puppet
git clone https://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/rodjek/vim-puppet.git
git clone https://github.com/godlygeek/tabular.git
#pip install pylint

