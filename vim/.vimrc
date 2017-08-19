syntax on
filetype plugin indent on

set nocompatible
set history=500
set ruler
set number

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set nowrap

set showcmd
set autowrite
set clipboard=unnamed     " access your system clipboard
set hlsearch

"" Ctrl Left/h & Right/l cycle between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

" disable backup and swap files
set nobackup
set noswapfile

" encodig
set encoding=utf-8
set fileencoding=utf-8

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" save as root
cmap w!! w !sudo tee > /dev/null %

" plugins
call plug#begin('~/.plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'dylanaraps/wal.vim'

call plug#end()

colorscheme wal

