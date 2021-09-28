" Colorscheme
syntax on
colorscheme ron
highlight LineNr ctermfg=grey

" Indentation
filetype plugin indent on
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent smarttab
autocmd FileType make setlocal noexpandtab
autocmd FileType ocaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType haskell setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2 wrap linebreak
autocmd FileType text setlocal tabstop=2 shiftwidth=2 softtabstop=2 wrap linebreak

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
set scrolloff=5
set nowrap

let g:is_bash = 1

" Rebindings
nmap Q <Nop>

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
vnoremap <expr> j v:count ? 'j' : 'gj'
vnoremap <expr> k v:count ? 'k' : 'gk'

nnoremap <CR> :noh<CR>
nnoremap <c-p> :CtrlP<CR>

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
