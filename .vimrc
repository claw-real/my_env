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

set nocompatible
filetype indent plugin on
set expandtab
set smarttab
set autoindent

set tabstop=2
set shiftwidth=2
set expandtab

set pastetoggle=<F2>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

let g:syntastic_puppet_puppetlint_args='--no-80chars-check --class_inherits_from_params_class'
"let g:syntastic_puppet_puppetlint_args='--class_inherits_from_params_class'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

set laststatus=2
