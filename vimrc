" nocompatible has many side-effects so it is set first
set nocompatible

"
" colorscheme
"

" comments are dark green
" constants are magenta
" code is the default foreground/background color
" all other text attributes are disabled
" gui colors are based on the tango dark pallet

" picking custom colors is far more complicated than it should be, since
" colorschemes revert all highlight settings
" see this gist for details
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f

function MyHighlights() abort
    highlight Normal      ctermfg=NONE      ctermbg=NONE  term=NONE
    highlight Normal      guifg=#D4D7CF     guibg=#1F1F1F gui=NONE
    highlight Cursor      guifg=#1F1F1F     guibg=#D4D7CF
    highlight LineNr      ctermfg=DarkGrey  guifg=#555753
    highlight ColorColumn ctermbg=DarkRed   guibg=#CC0000
    highlight Visual      ctermbg=LightGrey guifg=#555753
    highlight Search      ctermfg=Black     ctermbg=Yellow
    highlight Search      guifg=#000000     guibg=#FCE94F

    highlight Comment     ctermfg=DarkGreen   guifg=#4E9A06 term=NONE gui=NONE
    highlight Constant    ctermfg=DarkMagenta guifg=#AD7FA8 term=NONE gui=NONE
    highlight Special     ctermfg=NONE        guifg=#D4D7CF term=NONE gui=NONE
    highlight SpecialKey  ctermfg=NONE        guifg=#D4D7CF term=NONE gui=NONE
    highlight Title       ctermfg=NONE        guifg=#D4D7CF term=NONE gui=NONE
    highlight Identifier  ctermfg=NONE        guifg=#D3D7CF term=NONE gui=NONE
    highlight Statement   ctermfg=NONE        guifg=#D3D7CF term=NONE gui=NONE
    highlight PreProc     ctermfg=NONE        guifg=#D3D7CF term=NONE gui=NONE
    highlight Type        ctermfg=NONE        guifg=#D3D7CF term=NONE gui=NONE
    highlight Operator    ctermfg=NONE        guifg=#D3D7CF term=NONE gui=NONE
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

syntax on
colorscheme default


"
" indentation
"

filetype plugin indent on
set expandtab autoindent smartindent smarttab
set tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType make     setlocal noexpandtab
autocmd FileType ocaml    setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType haskell  setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType text     setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal wrap linebreak display+=lastline
autocmd FileType text     setlocal wrap linebreak display+=lastline

"
" misc
"

set path=.,,**
set wildmenu
set ignorecase smartcase hlsearch incsearch
set colorcolumn=80
set nonumber
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
set guifont=Monaco:h16

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

" ctrl-p finds files
nnoremap <c-p> :find 

let mapleader = ' '

" swap beween two files
nnoremap <leader><leader> <c-^>

" allow visual block on windows (ctrl-v used for paste)
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
