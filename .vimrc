" File: _vimrc
" Version: 1
" Author: Weston Vial
" Created: 23 November 2013
" Modified: 5 December 2015

" NEEDED FOR VUNDLE

set nocompatible              " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugin 'sentientmachine/Pretty-Vim-Python'
Plugin 'tpope/vim-commentary'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hdima/python-syntax'
"Plugin 'Raimondi/delimitMate' " Auto closing of brackets, quotes, etc

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
" Put your non-Plugin stuff after this line
if has("mouse")
  set mouse=a
endif

" Turns on syntax highlighting.
execute pathogen#infect()
"syntax highlighting
syntax on
filetype plugin indent on

" -------------------------------------
" Moving, searching, and patterns
" -------------------------------------
set nosol			" Keeps cursor in same column for long-range motion cmds
set incsearch		" Highlight patterns while being typed
set ignorecase		" Ignore case for searching
set smartcase		" Overrides 'ignorecase' when pattern has upper case char
set encoding=utf-8
set backspace=indent,eol,start

" -------------------------------------
" Displaying text
" -------------------------------------
set relativenumber
set nu			" Sets line numbers

" -------------------------------------
" Terminal
" -------------------------------------
set title		" Shows info the window title

" -------------------------------------
" Messages and info
" -------------------------------------
set ru

" -------------------------------------
" Tabs and indenting and complete
" -------------------------------------
set ts=4		" Number of spaces a <Tab> in the texts for
set sw=4		" Number of spaces for each step of a (auto)indent
set smarttab    " a <Tab> in an indent inserts 'shiftWidth' spaces
set autoindent  " Automatically sets the indent of a new line
set si			" Do clever autoindenting
set hls			" Highlight all matches for the last used search pattern
set expandtab	" Converts tabs to spaces
set complete-=i " Keyword completion stuff
set nrformats-=octal    " Numbers that start with zero are considered octal (to binary w/ CTRL A/X)

" -------------------------------------
" Reading and writing files
" -------------------------------------
set bk		" Keep a backup after overwriting a file
set undofile
set undodir=/Users/wevial/.vimundo

" -------------------------------------
" Remap split navigations & escape
" -------------------------------------
map gj <C-W><C-J>
map gk <C-W><C-K>
map gl <C-W><C-L>
map gh <C-W><C-H>

" -------------------------------------
" Remap - exit to normal mode
" -------------------------------------
inoremap kj <Esc>
set timeoutlen=200

" -------------------------------------
" Pretty Vim Python
" -------------------------------------
"colorscheme molokai
"highlight Comment cterm=bold

" -------------------------------------
" Nice JS config
" -------------------------------------
set t_Co=256
syntax on
"colorscheme distinguished
colorscheme molokai
set background=dark
" For indent guides
"set ts=4 sw=4 noet
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=1

" for vim-js
let b:javascript_fold=0
let javascript_enable_domhtmlcss=1

" -------------------------------------
" YouCompleteMe
" -------------------------------------
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

" -------------------------------------
" New Keybinds
" -------------------------------------
function! OCamlType()
    let col = col('.')
    let line = line('.')
    let file = expand("%:p:r")
    echo system("annot -n -type ".line." ".col." ".file.".annot")
endfunction
map ,t :call OcamlType()<return>
