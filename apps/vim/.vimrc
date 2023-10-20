" Vim configuration file
" Author: eomerdev <eomerdev@gmail.com>

filetype plugin indent on
syntax on

set encoding=utf-8
set fileformats=unix,dos,mac

set undofile
set undodir=~/.vim/undo
set nobackup
set noswapfile
set mouse=a
set clipboard=unnamedplus
set guicursor=
set noerrorbells

set hidden
set nowrap

set number relativenumber
set numberwidth=3
set laststatus=2
set noshowmode
set ruler
set showcmd
set wildmenu
set showmatch
set cursorline
set scrolloff=10
set background=dark

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set nohlsearch
set incsearch
set ignorecase
set smartcase

source ~/.vim/plugins.vim
source ~/.vim/maps.vim

colorscheme gruvbox
