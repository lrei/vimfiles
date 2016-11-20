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
let localleader = ","
let g:localleader = ","

" Use Mouse
set mouse=a

" We are never on a slow connection:
set ttyfast
set ttymouse=xterm2
set ttyscroll=3

" Quick Edit & Reload of vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Fix Mac(Vim) use of the Modifier key Alt/Option
if has("gui_macvim")
    set macmeta
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fix Terminal Vim to allow for use of the Meta Key
" https://github.com/guns/vim-sexp/issues/18#issuecomment-150748213
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Timeout quickly on key codes to differentiate from normal <Esc>
set ttimeout ttimeoutlen=0

" Special named keys that cause problems when used literally
let namedkeys = { ' ': 'Space', '\': 'Bslash', '|': 'Bar', '<': 'lt' }

" Map Alt + ASCII printable chars
for n in range(0x20, 0x7e)
    let char = nr2char(n)
    let key  = char

    if has_key(namedkeys, char)
        let char = namedkeys[char]
        let key  = '<' . char . '>'
    endif

    " Escaped Meta (i.e. not 8-bit mode)
    "  * Esc-[ is the CSI prefix (Control Sequence Introducer)
    "  * Esc-O is the SS3 prefix (Single Shift Select of G3 Character Set)
    if char !=# '[' && char !=# 'O'
        try
            execute 'set <M-' . char . ">=\<Esc>" . key
        catch
        endtry
    endif
endfor

unlet namedkeys n key char
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
