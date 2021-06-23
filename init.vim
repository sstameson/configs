" Colorscheme
syntax on
set termguicolors
let base16colorspace=256
colorscheme base16-tomorrow-night

" Indentation
set tabstop=4 shiftwidth=4 expandtab autoindent smartindent
autocmd FileType make setlocal noexpandtab
autocmd FileType ocaml setlocal tabstop=2 shiftwidth=2
autocmd FileType haskell setlocal tabstop=2 shiftwidth=2

" Searching
set ignorecase smartcase hlsearch incsearch

" File navigation
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" Misc
set colorcolumn=80
set number
set laststatus=2
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=
set hidden
set noswapfile
set mouse+=a
set noshowmode
set scrolloff=5

" Rebindings
nmap Q <Nop>

nnoremap <CR> :noh<CR>
nnoremap <C-p> :Lex<CR>

let mapleader = ' '

nnoremap <leader><leader> <c-^>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
