" File: .vimrc
" Version: 1
" Author: Shunchao Wang
" Created: Jan 23, 2013

" User vim settings, rather than VI settings
set nocompatible

" Turn on the verboseness to see everything vim is doing
" set verbose=9

" I like 4 spaces for indenting
set shiftwidth=4

" I like 4 stops
" softtabstop will make backspace to remove already input tab
" tabstop needs to backspace 4 times to remove an input tab
set tabstop=4
set softtabstop=4

" Spaces instead of tabs
set expandtab

" Always set auto indenting on
set autoindent

" set command height
set cmdheight=2

" do not keep a backup files
set nobackup
set nowritebackup

" keep 20 lines of command line history
set history=20

" show the cursor position all the time
set ruler

" show (partial) command
set showcmd

" set ignorecase on and incremental search
set ignorecase
set incsearch

" set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Always display a status line at the bottom of the window
set laststatus=2

" Showmatch: show the matching bracket for the last ')'?
set showmatch

" Allow tilde to act as an operator
set notildeop

" Make syntax work in terminal Vim
set term=builtin_ansi
" Runtime path manipulation
execute pathogen#infect()
" Turn on syntax
syntax on
filetype plugin indent on

" Vertical line indentation
let g:indentLine_color_term = 239
"let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'
" DelimitMate setting
let delimitMate_expand_cr = 1

" NERDTree configuration
"nmap <leader>d :NERDTreeToggle<CR>

" set new file encoding
set fileencoding=utf8
" set file encoding order
set fileencodings=ucs-bom,gb18030,utf-8,default

