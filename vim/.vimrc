syntax on

" USER INTERFACE
" Color scheme
colorscheme peachpuff
" Show cmd
set showcmd
" Show line number
set nu rnu
" Do not wrap line if it goes out of the screen
set nowrap
" Highlight the line where the cursor is
set cursorline
" Show autocomplete menu for commands
set wildmenu

" INDENT
" How many whitespaces a <Tab> is worth
set tabstop=4 
" How many whitespaces a <Tab> keypress is worth
set softtabstop=4
" Use whitespaces instead of <Tab>
set expandtab
" How many whitespaces a 'level of indentation' is work
set shiftwidth=4
" Do smart indent
set smartindent

" KEY MAPPING
let mapleader = " "
" Center screen after moving half pages
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
" Press \d to delete without cutting
nnoremap <leader>d "_d
xnoremap <leader>d "_d
" Press Shift-j to move the current line down, or Shift-k to move it up
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
" After selecting a block, press Shift-j to move the whole block down, or press Shift-k to move it up
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

" FILES & BACKUP
set nobackup
set noswapfile

" PERFORMANCE
" Don't update screen during macro or script execution
set lazyredraw
