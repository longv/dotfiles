syntax on

" Enable line numbers and relative numbers
set number
set relativenumber

" Show command in the status bar
set showcmd

" Highlight current cursor line
set cursorline

" Tab and indentation settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Disable line wrapping
set nowrap

" Disable swap and backup files
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set undofile

" Search settings
set nohlsearch
set incsearch

" Enable true colors in terminal
set termguicolors

" Scrolling and UI settings
set scrolloff=8
set signcolumn=yes

" Set leader key to space
let mapleader=" "

" Remap <C-e> to open file explorer
nnoremap <C-e> :Ex<CR>

" Center screen after jumping up/down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Delete without copying to register
nnoremap <leader>d "_d
vnoremap <leader>d "_d
xnoremap <leader>p "_dP

" Move lines up and down
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Search and replace word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
