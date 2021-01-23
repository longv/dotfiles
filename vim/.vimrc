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
" Press \d to delete a whole line without cutting
nnoremap <leader>d "_dd
xnoremap <leader>d "_dd
" Press Shift-j to move the current line down, or Shift-k to move it up
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
" After selecting a block, press Shift-j to move the whole block down, or press Shift-k to move it up
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

" FILES & BACKUP
set nobackup
set noswapfile

" PERFORMANCE
" Don't update screen during macro or script execution
set lazyredraw
