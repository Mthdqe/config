set nocompatible
filetype off
syntax on
filetype indent plugin on

set termguicolors
set background=dark
colorscheme monokai

set shiftwidth=4
set softtabstop=4
set expandtab
set number
set colorcolumn=80

:set splitright
:set splitbelow

:set list listchars=tab:>-,trail:~,extends:>

call plug#begin()
Plug 'scrooloose/syntastic'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kjwon15/vim-transparent'
Plug 'fladson/vim-kitty'
Plug 'rhysd/vim-clang-format'
call plug#end()

"Airline options"
let g:airline_theme='simple'

"Clangformat options"
let g:clang_format#command='clang-format-12'
let g:clang_format#auto_format=1
let g:clang_format#auto_filetypes= [ "c", "cpp" ]

highlight ColorColumn ctermbg=7

