" How VIM Looks
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd         " display incomplete commands
set showmode        " Always show what mode we're in
set showmatch       " Show matching brackets when text indicator is over one
set mat=2           " Showmatch blink for this many tenths of a second
set cursorline      " Highlight cursor line
set nocursorcolumn  " do not highlight cursor column
set scrolloff=5     " Show # lines above and below cursor when possible
set sidescroll=1    " Incremental (horizontal) sidescroll
set sidescrolloff=7 " Show # chars to the side of the cursor when scrolling
set number          " show line numbers
set showbreak=>\    " show break indicator if soft wrapping in on
set t_ut=           " force vim to draw on the entire terminal background
"set lazyredraw     " dont auto redraw after macros
syntax on           " Activate syntax highlighting

" Force Redraw in case something messed with the screen
" Note: <c-l> is remaped to something else
"nnoremap U :syntax sync fromstart<cr>:redraw!<cr>
nnoremap <F10> :syntax sync fromstart<cr>:redraw!<cr>


set novisualbell    " no blinking
set noerrorbells    " no noise
set vb t_vb=        " disable any beeps or flashes on error

" shortens messages:
" a - use all abbreviations
" t - truncate file message if necessary
" I - no intro message when starting Vim
set shortmess=atI

" set horizontal size
set columns=80 " horizontal window size

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default Colorschemes and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Dark Background
set background=dark

if has('gui_running')
    set guioptions=egmrt " hide toolbar
    set gfn=Hack_Regular:h14   "Gui font
else
" Typically we would want to
"set termguicolors   " truecolor (tc) instead of set t_Co=256|16
"but because we are using solarized we need to:
    set t_Co=16
    let g:solarized_termcolors = 16
    let g:solarized_termtrans = 0
endif


" Theme
colorscheme solarized
let g:airline_theme='solarized'
call togglebg#map("<F9>")


" - Font Options
set anti " antialias

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
  let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" status line
set laststatus=2                            " Always show status line
set statusline=%m                           " Modified flag.
set statusline+=%r                          " Readonly flag.
set statusline+=\                           " Space.
set statusline+=%{fugitive#statusline()}    " Fugitive status line
set statusline+=\                           " Space.

set statusline+=%#redbar#                " Highlight the following as a warning.
set statusline+=%{SyntasticStatuslineFlag()} " Syntastic errors.
set statusline+=%*                           " Reset highlighting.

set statusline+=%=   " Right align.

" File format, encoding and type.  Ex: "(unix/utf-8/python)"
set statusline+=(
set statusline+=%{&ff}                        " Format (unix/DOS).
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc}   " Encoding (utf-8).
set statusline+=/
set statusline+=%{&ft}                        " Type (python).
set statusline+=)
