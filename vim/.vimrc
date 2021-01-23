syntax on

" USER INTERFACE
" Color scheme
colorscheme peachpuff
" Show line number
set nu
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
nnoremap <leader>d "_d
xnoremap <leader>d "_d

" FILES & BACKUP
set nobackup
set noswapfile

" PERFORMANCE
" Don't update screen during macro or script execution
set lazyredraw
