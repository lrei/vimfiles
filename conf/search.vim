"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase	" Ignore case when searching
set smartcase	" When searching try to be smart about cases
set hlsearch	" Highlight search results
set incsearch	" Makes search act like search in modern browsers
set gdefault    " global search & replace instead of line

" Clear search highlight
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Disable Vim's default regex, uses normal regex
"nnoremap / /\v
"vnoremap / /\v

" Configure Ack to use ag if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Map leader-a to Ack
nmap <leader>a :Ack<space>

" - WiLd menu
set wildmode=longest:full	" file name completion
set wildmenu			" Turn on the WiLd menu

" - CtrlP configuration
" top to bottom ordering
let g:ctrlp_match_window = 'bottom,order:ttb'
" always open files in new buffers
let g:ctrlp_switch_buffer = 0
" respect change of directories
let g:ctrlp_working_path_mode = 0
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

" Files to ignore by wildignore and ctrlp:
" Ignore compiled files, git, ...
set wildignore=*.o,*~,*.pyc,*.so,\.git
" ignore .gitignore files in ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#streak = 1

"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T