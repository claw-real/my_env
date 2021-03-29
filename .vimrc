set nocp
syntax on
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

set backspace=indent,eol,start
execute pathogen#infect()

call togglebg#map("")
syntax enable
set background=light
colorscheme solarized


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

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

"let g:syntastic_puppet_puppetlint_args='--no-80chars-check --class_inherits_from_params_class'
"let g:syntastic_puppet_puppetlint_args='--class_inherits_from_params_class'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

set laststatus=2

" -----{ ALE }-----
let g:ale_open_list = 1
let g:ale_puppet_puppetlint_options='--no-autoloader_layout-check --no-documentation-check --no-80chars-check --no-class_inherits_from_params_class-check'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_pylint_executable = 'pylint3'

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'

" Polyglot config
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Autoclose when last buffer is closed
autocmd QuitPre * if empty(&bt) | lclose | endif
