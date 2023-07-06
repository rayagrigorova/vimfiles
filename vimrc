filetype plugin on
filetype indent on
syntax on

set verbosefile=debug.txt

nnoremap g/ :vimgrep / <c-r>// * .*<cr>

" :digraphs 
" <c-k> VV
" <c-k> hh
" <c-k> vv


  augroup vimStartup
    au!

    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

  augroup END


  augroup vimHints
    au!
    autocmd CmdwinEnter *
	  \ echohl Todo | 
	  \ echo 'You discovered the command-line window! You can close it with ":q".' |
	  \ echohl None
  augroup END


packadd matchit


set backspace=indent,eol,start
set belloff=all
set clipboard=unnamed,unnamedplus
set display=truncate
set expandtab
set fillchars=stl:─,stlnc:─,vert:│
set guifont=Consolas:h16:cANSI
set guioptions=
set history=1000
set incsearch
set mouse=a
set nobackup 
set nohlsearch
set nolist
set noswapfile
set nowritebackup
set nrformats-=octal
set number
set ruler      
set scrolloff=5
set scrolloff=0
set shiftwidth=4
set shortmess-=S
set showcmd   
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set termguicolors
set ttimeout 
set ttimeoutlen=50
set undodir=$HOME/vimfiles/vimundo
set undofile
set wildmenu 
set wildmode=list:longest,full

noremap zj mayyp`aj
nnoremap zk mayyP`ak

" g: -- global variable
" l: -- local variable
" v: -- vim-special variable 
" a: -- argument

set shell=powershell

let g:netrw_liststyle = 3 " дървовидно 
let g:netrw_banner = 0 " без банер (`I` го показва) 
let g:netrw_winsize = 20 " по-малък прозорец

let g:keysound_enable = 1

nnoremap gn :Lex<cr>

call pathogen#infect()

call plug#begin('~/vimfiles/plugged')
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/undoquit.vim'
Plug 'vim-scripts/Decho'
Plug 'junegunn/vim-plug'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
" Plug 'AndrewRadev/andrews_nerdtree.vim'
" Plug 'AndrewRadev/nerdtree'
" Plug 'kana/vim-smartword'
" Plug 'simnalamburt/vim-mundo'
call plug#end()

inoremap <c-p> <c-r>"
cnoremap <c-p> <c-r>"

nnoremap gj <c-w>j
nnoremap gk <c-w>k
nnoremap gl <c-w>l
nnoremap gh <c-w>h
"Add new line without 

"entering insert mode
nnoremap o o<Esc>0"_D
nnoremap O O<Esc>0"_D

nnoremap vv ^vg_
nnoremap Y y$

" Logical lines instead of actual lines
nnoremap j gj

nnoremap <silent> J 5gj
nnoremap <silent> K 5gk
xnoremap <silent> J 5gj
xnoremap <silent> K 5gk

nnoremap gm K

nnoremap ! :source %<cr>
 
let g:cpp_compiler = 'g++'  " Set the compiler (change if using a different compiler)
let g:cpp_compiler_options = '-std=c++17 -Wall -Wextra'  " Set compiler options

set makeprg=gcc\ -Wall\ -o\ %<\ %

colorscheme jellybeans

" relative path
" set runtimepath+=plugin/cpp_plugin
" set runtimepath+=autoload/cpp_plugin

source ~/vimfiles/autoload/cpp_plugin/cpp_plugin.vim

autocmd FileType cpp setlocal cindent
autocmd FileType cpp setlocal omnifunc=cppcomplete#Complete
autocmd FileType h setlocal cindent
autocmd FileType h setlocal omnifunc=cppcomplete#Complete
autocmd FileType hpp setlocal cindent
autocmd FileType hpp setlocal omnifunc=cppcomplete#Complete

set cursorline " highlight current line
set showmatch " show matching parenthesis 
