call plug#begin()

Plug 'dense-analysis/ale'    " Linting
Plug 'godlygeek/tabular'     " Tab alignment

Plug 'itchyny/lightline.vim' " Status bar
Plug 'morhetz/gruvbox'       " Colorscheme

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
syntax on

let mapleader = " "

set tabstop=4                     " Set tab character width
set softtabstop=4                 " Set tab key press width
set shiftwidth=4                  " Set indent size
set expandtab                     " Insert spaces instead of tab characters
set autoindent smartindent        " Make indents smart
set colorcolumn=80                " Create marker at column 80
set number                        " Show line numbers
set laststatus=2                  " Always show status line
set backspace=indent,eol,start    " Make backspace reasonable
set hidden                        " Allow hidden buffers
set ignorecase                    " Enable case-insensitive search if lowercase
set smartcase                     " Enable case-sensitive search
set hlsearch                      " Highlight all search results
set incsearch                     " Enable searching as you type
set noerrorbells visualbell t_vb= " Disable audible bell
set mouse+=a                      " Enable mouse support
set noshowmode                    " Hide redundant mode information
set scrolloff=5                   " Always show 5 lines above/below cursor

" Use tab character for Makefiles
autocmd FileType make setlocal noexpandtab 

" Disable 'Q' (enters Ex mode)
nmap Q <Nop>

" Unset the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Remap window switching
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Use <C-j> as Esc
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
snoremap <C-j> <Esc>
xnoremap <C-j> <Esc>
cnoremap <C-j> <C-c>
onoremap <C-j> <Esc>
lnoremap <C-j> <Esc>
tnoremap <C-j> <Esc>

" esc in insert mode
inoremap kj <esc>

" Try to prevent bad habits like using the arrow keys for movement
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

