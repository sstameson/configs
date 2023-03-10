
"
" colorscheme
"

syntax on
colorscheme ron
highlight Normal      ctermfg=NONE      ctermbg=NONE
highlight Normal      guifg=#D4D7CF     guibg=#1f1f1f
highlight LineNr      ctermfg=DarkGrey  guifg=#555753
highlight ColorColumn ctermbg=DarkRed   guibg=#CC0000
highlight Comment     ctermfg=DarkGreen guifg=#4E9A06
highlight Constant    ctermfg=Magenta   guifg=#AD7FA8
highlight Special     ctermfg=NONE      guifg=#D4D7CF
highlight Identifier  ctermfg=NONE      guifg=#D3D7CF
highlight Statement   ctermfg=NONE      guifg=#D3D7CF
highlight PreProc     ctermfg=NONE      guifg=#D3D7CF
highlight Type        ctermfg=NONE      guifg=#D3D7CF
highlight Operator    ctermfg=NONE      guifg=#D3D7CF
highlight MatchParen  ctermbg=DarkBlue ctermfg=LightBlue

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
set guicursor=a:block-blinkoff0,i:ver25-blinkoff0

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
