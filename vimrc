" nocompatible has many side-effects so it is set first
set nocompatible

"
" colorscheme
"

" comments are dark green
" constants are magenta
" code is the default foreground/background color

" picking custom colors is far more complicated than it should be, since
" colorschemes revert all highlight settings
" see this gist for details
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f

command SynID echo synIDattr(synID(line("."), col("."), 1), "name")

function MyHighlights() abort
    " cterm colors
    highlight Normal      ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Comment     ctermfg=DarkGreen   ctermbg=NONE      term=NONE
    highlight Constant    ctermfg=DarkMagenta ctermbg=NONE      term=NONE
    highlight LineNr      ctermfg=DarkGrey    ctermbg=NONE      term=NONE
    highlight ColorColumn ctermfg=NONE        ctermbg=DarkRed   term=NONE
    highlight Search      ctermfg=Black       ctermbg=Yellow    term=NONE
    highlight Visual      ctermfg=NONE        ctermbg=LightGrey term=NONE
    highlight Error       ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Special     ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight SpecialKey  ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Title       ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Identifier  ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Statement   ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight PreProc     ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Type        ctermfg=NONE        ctermbg=NONE      term=NONE
    highlight Operator    ctermfg=NONE        ctermbg=NONE      term=NONE
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme default call MyHighlights()
    autocmd FileType c,cpp highlight link cConstant Normal
augroup END

augroup MyFiles
    autocmd!
    autocmd BufRead,BufNewFile *.metal setfiletype c
augroup END

syntax on
colorscheme default

"
" indentation
"

filetype plugin indent on
set expandtab autoindent smartindent smarttab
set tabstop=4 shiftwidth=4 softtabstop=4

augroup MyIndent
    autocmd!
    autocmd FileType make     setlocal noexpandtab
    autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType html     setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType text     setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType tex      setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END

augroup MyWrap
    autocmd!
    autocmd FileType markdown setlocal colorcolumn=0 wrap linebreak display+=lastline
    autocmd FileType html     setlocal colorcolumn=0 wrap linebreak display+=lastline
    autocmd FileType text     setlocal colorcolumn=0 wrap linebreak display+=lastline
    autocmd FileType tex      setlocal colorcolumn=0 wrap linebreak display+=lastline
augroup END

"
" misc
"

set path=.,,**
set wildmenu
set ignorecase smartcase hlsearch incsearch
set colorcolumn=120
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
