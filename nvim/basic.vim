set autochdir
set encoding=UTF-8
set shortmess+=c
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set clipboard=unnamedplus
set backspace=indent,eol,start
set path+=**                " для поиска в подкаталогах
set wildmenu                " варианты Tab в меню а не по одному
set wildmode=longest:full,full
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number relativenumber   " add line numbers
set signcolumn=yes
set wildmode=longest,list   " get bash-like tab completions
set formatoptions-=ro       " не повторять комментарий на новой строке
set completeopt=longest,menuone
" set cc=120                  " set an 80 column border for good coding style
set t_Co=256
set notermguicolors
filetype plugin indent on   "allow auto-indenting depending on file type
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
syntax on                   " syntax highlighting
" set backupdir=~/.cache/vim " Directory to store backup files.

" Настройки провайдеров Python[2|3]
let g:python3_host_prog = $HOME . "/.pyenv/versions/pynvim3/bin/python3"
let g:loaded_python_provider = 0

let g:mapleader = "\<Space>"

" open new split panes to right and below
set splitright
set splitbelow

augroup json
    autocmd!
    " autocmd FileType json setlocal foldmethod=syntax 
    autocmd FileType json setlocal foldmethod=marker foldmarker={,}
    autocmd Syntax json %!jq
    " autocmd FileType json setlocal set syntax=on
    " autocmd FileType json setlocal syntax on
    " autocmd FileType bar,baz setlocal noexpandtab shiftwidth=3 spell spellang=en_us
augroup END

autocmd BufNewFile,BufRead *.json set syntax=on ft=json
" autocmd Filetype json setlocal foldmethod=syntax

