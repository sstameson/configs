call plug#begin()

Plug 'dense-analysis/ale'                           " Linting engine
Plug 'godlygeek/tabular'                            " Tab alignment
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                             " Fuzzy finding

Plug 'itchyny/lightline.vim'                        " Status bar
Plug 'chriskempson/base16-vim'                      " Colorscheme
Plug 'lark-parser/vim-lark-syntax'

call plug#end()

if has('termguicolors')
    set termguicolors
endif
let base16colorspace=256
colorscheme base16-tomorrow-night
syntax on

set tabstop=4                     " Set tab character width
set softtabstop=4                 " Set tab key press width
set shiftwidth=4                  " Set indent size
set expandtab                     " Insert spaces instead of tab characters
set autoindent smartindent        " Make indents smart

set ignorecase                    " Enable case-insensitive search if lowercase
set smartcase                     " Enable case-sensitive search
set hlsearch                      " Highlight all search results
set incsearch                     " Enable searching as you type

set colorcolumn=80                " Create marker at column 80
set number                        " Show line numbers
set laststatus=2                  " Always show status line
set backspace=indent,eol,start    " Make backspace reasonable
set noerrorbells visualbell t_vb= " Disable audible bell
set hidden                        " Allow hidden buffers
set mouse+=a                      " Enable mouse support
set noshowmode                    " Hide redundant mode information
set scrolloff=5                   " Always show 5 lines above/below cursor

" Use tab character for Makefiles
autocmd FileType make setlocal noexpandtab 
" Change indent size for OCaml
autocmd FileType ocaml setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Disable 'Q' (enters Ex mode)
nmap Q <Nop>

" Unset the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Ctrl + P opens fuzzy finder
map <C-p> :Files<CR>

" Map leader key to space
let mapleader = ' '

" <leader><leader> toggles between last two open buffers
nnoremap <leader><leader> <c-^>

" Remap window switching
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

