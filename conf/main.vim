"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread
" Automatically save before :next, :make etc.
set autowrite

" use Space as <Leader> key
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" use comma as <LocalLeader> key
let localleader = ","
let g:localleader = ","

" Quick Edit & Reload of vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" We are never on a slow connection:
set ttyfast
set ttymouse=xterm2
set ttyscroll=3

" Fix Mac(Vim) use of the Modifier key Alt/Option
if has("gui_macvim")
    set macmeta
endif
