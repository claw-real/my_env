set nocp
syntax on
set backspace=indent,eol,start
execute pathogen#infect()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_puppet_puppetlint_args='--no-documentation-check --no-80chars-check --no-class_inherits_from_params_class-check'

set nocompatible
filetype indent plugin on
set expandtab
set smarttab
set autoindent

set laststatus=2
