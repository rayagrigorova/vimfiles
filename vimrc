filetype plugin on
filetype indent on
syntax on

nnoremap g/ :vimgrep / <c-r>// * .*<cr>

" :digraphs 
" <c-k> VV
" <c-k> hh
" <c-k> vv

set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set display=truncate
set expandtab
set fillchars=stl:─,stlnc:─,vert:│
set guifont=Consolas:h18:cANSI
set guioptions=
set history=1000
set incsearch
set mouse=a
set nobackup 
set nolist
set noswapfile
set nowritebackup
set nrformats-=octal
set number
set ruler      
set scrolloff=0
set scrolloff=0
set shiftwidth=2
set showcmd   
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set tabstop=8
set termguicolors
set ttimeout 
set ttimeoutlen=50
set wildmenu 
set wildmode=list:longest,full

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

" call pathogen#infect()

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/undoquit.vim'
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

