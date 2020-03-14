"Be iMproved, required
set nocompatible              

"Required
filetype off                  

"Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-heroku'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=','

"Enable syntax highlighting
syntax on

"Colour scheme
colorscheme atom-dark

"Font and size
set guifont=Menlo:h18

"Line spacing
set linespace=13

"Enable line numbers
set number
set numberwidth=4

"Set the tabs to four spaces
set tabstop=4
set expandtab
set smarttab

"Backspace behaviour
set backspace=indent,eol,start

"Highlight current line
set cursorline

"Highlight search results
set hlsearch

"Incremental search - highlight as soon as found
set incsearch


"--------------------------GUI Options------------------------
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"---------------------------Mappings--------------------------
"Edit the .vimrc file 
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Simple highlight removal
nmap <leader><space> :nohlsearch<cr>

"Split management
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Horizontal splits open below
set splitbelow

"Veritcal splits open to the right
set splitright

"------------------------------------------------------------
"Source the ~/.vimrc as soon as it is saved
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END
