" Colorscheme
syntax on
colorscheme ron
highlight LineNr  ctermfg=DarkGrey
highlight Comment ctermfg=DarkGrey

" Indentation
filetype plugin indent on
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent smarttab
autocmd FileType make setlocal noexpandtab
autocmd FileType ocaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType haskell setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2 wrap linebreak colorcolumn=0 display+=lastline
autocmd FileType text setlocal tabstop=2 shiftwidth=2 softtabstop=2 wrap linebreak colorcolumn=0 display+=lastline
autocmd FileType tex setlocal wrap linebreak display+=lastline

" Searching
set ignorecase smartcase hlsearch incsearch

" Misc
set nocompatible
set colorcolumn=80
set number
set ruler
set laststatus=2
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=
set hidden
set noswapfile
set mouse+=a
set shortmess-=S
set scrolloff=5
set nowrap
set guifont=Monaco:h16
set guicursor=a:block-blinkoff0,i:ver25-blinkoff0
set exrc

let g:is_bash = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_use_caching = 0

let g:ale_cpp_cc_options="-Wall -Wextra -std=c++11 -pedantic"

" Rebindings
nmap Q <Nop>

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
vnoremap <expr> j v:count ? 'j' : 'gj'
vnoremap <expr> k v:count ? 'k' : 'gk'

nnoremap <CR> :noh<CR>

let mapleader = ' '

nnoremap <leader><leader> <c-^>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
