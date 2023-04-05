filetype plugin on
filetype indent on
syntax on

set guifont=Consolas:h18:cANSI
set t_Co=256
set termguicolors

nnoremap g/ :vimgrep / <c-r>// * .*<cr>

set backspace=indent,eol,start
set history=1000
set ruler      
set showcmd   

set wildmenu 

set wildmode=list:longest,full

" set expandtab
" set shiftwidth=2
" set softtabstop=2
" set tabstop=8

set nolist

set ttimeout 
set ttimeoutlen=50
set display=truncate
set scrolloff=0
set incsearch
set nrformats-=octal
set guioptions=

set mouse=a

set scrolloff=0
set number
set splitbelow
set splitright

" :digraphs 
" <c-k> vv
" <c-k> VV
" <c-k> hh

set fillchars=stl:─,stlnc:─,vert:│

set clipboard=unnamed,unnamedplus

set nobackup 
set nowritebackup
set noswapfile

nnoremap zj mayyp`aj
nnoremap zk mayyP`ak


" g: -- global variable
" l: -- local variable
" v: -- vim-special variable 
" a: -- argument

set shell=powershell

let g:netrw_liststyle = 3 " дървовидно 
let g:netrw_banner = 0 " без банер (`I` го показва) 
let g:netrw_winsize = 20 " по-малък прозорец

nnoremap gn :Lex<cr>

call pathogen#infect()

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

