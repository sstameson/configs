
"
" colorscheme
"

syntax on
highlight LineNr      ctermfg=DarkGrey
highlight ColorColumn ctermbg=DarkRed
highlight Comment     ctermfg=DarkGreen
highlight Constant    ctermfg=Magenta
highlight Normal      ctermfg=White
highlight Special     ctermfg=White
highlight Identifier  ctermfg=White
highlight Statement   ctermfg=White
highlight PreProc     ctermfg=White
highlight Type        ctermfg=White
highlight Operator    ctermfg=White

"
" indentation
"

filetype plugin indent on
set tabstop=4 shiftwidth=4 softtabstop=4
    \ expandtab autoindent smartindent smarttab
autocmd FileType make     setlocal noexpandtab
autocmd FileType ocaml    setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType haskell  setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2
    \ wrap linebreak colorcolumn=0 display+=lastline
autocmd FileType text     setlocal tabstop=2 shiftwidth=2 softtabstop=2
    \ wrap linebreak colorcolumn=0 display+=lastline
autocmd FileType tex      wrap linebreak colorcolumn=0 display+=lastline

"
" misc
"

set ignorecase smartcase hlsearch incsearch
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

"
" rebindings
"

" disable Ex mode
nmap Q <Nop>

" move by visible lines when wrapped
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
vnoremap <expr> j v:count ? 'j' : 'gj'
vnoremap <expr> k v:count ? 'k' : 'gk'

" enter clears search highlights
nnoremap <CR> :noh<CR>

let mapleader = ' '

" swap beween two files
nnoremap <leader><leader> <c-^>

" allow visual block on windows
nnoremap <leader>v <c-v>

" move between windows with expected keys
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" copy and paste with system clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
