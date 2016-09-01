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

let g:syntastic_puppet_puppetlint_args='--no-80chars-check --class_inherits_from_params_class'
"let g:syntastic_puppet_puppetlint_args='--class_inherits_from_params_class'

set nocompatible
filetype indent plugin on
set expandtab
set smarttab
set autoindent

set pastetoggle=<F2>

set laststatus=2
