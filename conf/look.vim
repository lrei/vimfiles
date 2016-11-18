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
"set lazyredraw      " dont auto redraw after macros
syntax on           " Activate syntax highlighting


"set visualbell " disable the beep
"set noerrorbells



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Default Colorschemes and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Theme Options
if has('gui_running')
    set guioptions=egmrt " hide toolbar
    " Use Dark Background
    set background=dark
    " Set Theme
    colorscheme solarized
    let g:solarized_contrast="high"
    let g:airline_theme='solarized'
    " set horizontal size
    set columns=90 " horizontal window size
else
    set columns=80
    set t_Co=256
    " Use Zenburn by default
    colorscheme zenburn

    " If we switch to solarized in the term it will be broken,
    " this makes it 'usable'
    let g:solarized_termcolors=256
    let g:solarized_visibility="high"
    let g:solarized_contrast="high"
endif

" - Font Options
set anti enc=utf-8
set gfn=Source\ Code\ Pro\ 15
"set gfn=Inconsolata\ Medium \14 " Set Font to Inconsolata and size to 14

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Thematic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :Thematic {theme_name}
" we need to set maxhorz to 0 otherwise thematic overrides the current size of
" the vim window
let g:thematic#defaults = {
\ 'airline-theme': 'solarized',
\ 'background': 'dark',
\ 'typeface': 'Source Code Pro for Powerline',
\ 'font-size': 15,
\ 'maxhorz': 0,
\ }

let g:thematic#themes = {
\ 'solar'      : {'colorscheme': 'solarized',
\                 'background': 'dark',
\                 'airline-theme': 'solarized',
\                },
\ 'codeschool' : {'colorscheme': 'codeschool',
\                 'background': 'dark',
\                 'airline-theme': 'solarized',
\                },
\ 'spacegray' : {'colorscheme': 'spacegray',
\                 'background': 'dark',
\                 'airline-theme': 'solarized',
\                },
\
\ 'solar_light': {'colorscheme': 'solarized',
\                 'background': 'light',
\                 'airline-theme': 'solarized',
\                 'font-size': 15,
\                },
\
\ 'zenburn':     {'colorscheme': 'zenburn',
\                 'airline-theme': 'wombat',
\                 'typeface': 'Menlo',
\                },
\ 'intothedark': {'colorscheme': 'intothedark',
\                 'airline-theme': 'jellybeans',
\                 'typeface': 'Source Code Pro for Powerline',
\                },
\
\ 'rails':       {'colorscheme': 'railscasts',
\                 'airline-theme': 'luna',
\                 'background': 'dark',
\                 'typeface': 'Hack',
\                },
\
\ 'jellybeans':  {'colorscheme': 'jellybeans',
\                 'airline-theme': 'jellybeans',
\                 'typeface': 'Inconsolata for Powerline',
\                 'font-size': 16,
\                },
\
\ 'dracula':     {'colorscheme': 'dracula',
\                 'airline-theme': 'luna',
\                 'typeface': 'Hack',
\                 'font-size': 15,
\                 'background': 'dark',
\                },
\
\ 'hybrid':      {'colorscheme': 'hybrid',
\                'background': 'dark',
\                'airline-theme': 'base16',
\                'typeface': 'Source Code Pro for Powerline',
\                'font-size': 15,
\                },
\
\ 'molokai':    {'colorscheme': 'molokai',
\                'background': 'dark',
\                'airline-theme': 'molokai',
\                'typeface': 'Hack',
\                'font-size': 14,
\                },
\
\ 'tnb':         {'colorscheme': 'Tomorrow-Night-Bright',
\                'background': 'dark',
\                'airline-theme': 'molokai',
\                'typeface': 'Incosolata for Powerline',
\                'font-size': 15,
\                },
\
\ 'data':       {'colorscheme': 'spacegray',
\                'background': 'dark',
\                'airline-theme': 'luna',
\                'typeface': 'Roboto Mono Medium for Powerline',
\                'font-size': 13,
\                },
\ 'pencil_dark' :{'colorscheme': 'pencil',
\                 'background': 'dark',
\                 'airline-theme': 'bubblegum',
\                 'typeface': 'Cousine for Powerline',
\                 'font-size': 20,
\                 'laststatus': 0,
\                 'linespace': 8,
\                },
\ 'pencil_lite' :{'colorscheme': 'pencil',
\                 'background': 'light',
\                 'airline-theme': 'light',
\                 'typeface': 'Cousine for Powerline',
\                 'font-size': 20,
\                 'laststatus': 0,
\                 'linespace': 8,
\                },
\
\ 'goyo'        :{'colorscheme': 'seoul256',
\                 'background': 'dark',
\                 'airline-theme': '',
\                 'typeface': 'Cousine for Powerline',
\                 'columns': 75,
\                 'font-size': 20,
\                 'laststatus': 0,
\                 'linespace': 8,
\                 'fullscreen': 1,
\                },
\ }

let g:thematic#theme_name = 'intothedark'


" Set Theme Based on Language
autocmd FileType python :Thematic molokai
autocmd FileType javascript :Thematic hybrid
autocmd FileType go :Thematic tnb
autocmd FileType clojure :Thematic dracula
autocmd BufNewFile,BufRead *.h,*.c :Thematic jellybeans
autocmd BufNewFile,BufRead *.vim :Thematic zenburn
autocmd BufNewFile,BufRead *.csv,json :Thematic data

" the non-thematic way to do it would be:
" autocmd FileType python colorscheme solarized
"    \ | set gfn=Menlo:h15
"    \ | let g:airline_theme='solarized'
" but it's unnecessary
