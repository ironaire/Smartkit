" File: .vimrc
" Version: 1
" Author: Shunchao Wang
" Created: Jan 23, 2013

" User vim settings, rather than VI settings
set nocompatible
filetype off	"required
filetype plugin indent on	"required
" Turn on syntax
syntax on

" Disable beep and flash whth an autocmd
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" Specify a directory for plugins, default is plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

" Make sure you use single quotes
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vimwiki/vimwiki'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'jdkanani/vim-material-theme'
Plug 'trevordmiller/nova-vim'

" Initialize plugin system
call plug#end()

" Turn on the verboseness to see everything vim is doing
" set verbose=9

" I like 4 spaces for indenting
set shiftwidth=4

" force columns to be 120 autowrap
set textwidth=120

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
set noswapfile

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

" show line number at startup
set number

" set encoding, fileencoding, fileencodings
set encoding=utf-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8
" set new file encoding
set fileencoding=utf-8
" set file encoding order
colorscheme nova "solarized
"colorscheme material-theme "solarized
set background=dark " dark or light
" set theme to be light between 6am and 5pm by enabling next 4 lines
let hour = strftime("%H")
if hour > 6 && hour < 18
    "set background=light
endif

" NERDTree setting
" nnoremap <silent> <Leader>e :NERDTreeToggle<CR> " use \e standing for project explorer to toggle
nnoremap <c-e> :NERDTreeToggle<CR> " use ctrl-e to toggle
" Uncomment this if you want to lose NERDTree if it is the last window open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize = 32

" CtrlP setting
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_by_filename = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.jar,*.war,*.o,.DS_Store
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" vimwiki/vimwiki
let g:vimwiki_list = [
			\{'path': '~/wiki/publicwiki/', 'syntax': 'markdown', 'ext': '.md'},
			\{'path': '~/wiki/personalwiki/', 'syntax': 'markdown', 'ext': '.md'},
		\]

" startify setting
"nnoremap <silent> <Leader>st : Startify<CR> " use \st to show startify list
nnoremap <c-s> : Startify<CR> " use ctrl-s to show startify list

