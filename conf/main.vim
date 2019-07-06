"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=2000

" Set to auto read when a file is changed from the outside
set autoread
" Automatically save before :next, :make etc.
set autowrite

" use Space as <Leader> key
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" use comma as <LocalLeader> key
let maplocalleader = ","
let g:maplocalleader = ","

" ffs save
nnoremap s :w<cr>

" Use Mouse
set mouse=a

" We are never on a slow connection:
set ttyfast
set ttymouse=sgr
set ttyscroll=3

" Timeout on maps and keycodes
set timeout
set ttimeout
" Time out lengths
set timeoutlen=1000
set ttimeoutlen=0

" Fix Mac(Vim) use of the Modifier key Alt/Option
if has("gui_macvim")
    set macmeta
endif
