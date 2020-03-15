"Be iMproved, required
set nocompatible

"Set encoding to UTF-8
set encoding=UTF-8

"Required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-heroku'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'arcticicestudio/nord-vim'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=','
"Enable syntax highlighting
syntax on

"Colour scheme
" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

let g:nord_italic_comments = 1

colorscheme nord

"Font and size
set guifont=Menlo:h18

"Line spacing
set linespace=11

"Enable line numbers
set number
set numberwidth=4

"Set the tabs to four spaces
set expandtab
set tabstop=4
set shiftwidth=4

"Backspace behaviour
set backspace=indent,eol,start

"Highlight current line
set cursorline

"Highlight search results
set hlsearch
"Incremental search - highlight as soon as found
set incsearch

"Always show at least one line above/below the cursor
set scrolloff=1
set display+=lastline
set sidescrolloff=5
"Makes :set list (visible whitespace) prettier.
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"No error bells
set noerrorbells
set novisualbell

"--------------------------GUI Options------------------------
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"Disable GUI tabs
set guioptions-=e

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

"Toggle NERDTreee with ctrl+b
nmap <C-B> :NERDTreeToggle<cr>

"------------------------------------------------------------
"Source the ~/.vimrc as soon as it is saved
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"Remove error bells in MacVim
autocmd! GUIEnter * set vb t_vb=

"------------------------Plugins-----------------------------
"Stop NerdTree using the dash key
let NERDTreeHijackNetrw=0

"CtrlP
let g:ctrlp_custom_ignore='node_modules\DS_Store\|git'
let g:ctrlp_match_window='top,order:ttb,min:1max:20,results:30'
