"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, Spaces, Tab and Indent Defaults
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8              " use utf8encoding

set backspace=indent,eol,start  " backspace through everything in I mode

" - Column, lines, etc
set nowrap                      " do not wrap lines
set  textwidth=79               " text width
set colorcolumn=80              " colored column at x chars
set formatoptions=qrn1          " @t: not sure but has to do with line wrap?

" - Indention
set smartindent
set autoindent                  " auto indent
set smarttab                    " smart tabs (propper auto indent)
set ai "Auto indent
set si "Smart indent

" - Tabs: indention without tabs
set expandtab                   " use spaces, not tabs when tab is pressed
set tabstop=4                   " make tab 4 spaces wide
set shiftwidth=4                " an indent is 4 spaces
set softtabstop=4

" These create newlines like o and O but stay in normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" - Activate Wrap/Linebreak for text editing (non-code)
command! -nargs=* Wrap set wrap linebreak nolist tw=80

" - Display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" - Highlight Trailing whitespaces
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

" Delete extra whitespaces on save
" I prefer to enable this on a per file-extension basis
"autocmd BufWritePre * :%s/\s\+$//e


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Copy - Paste
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle paste mode on and off
map <leader>pl :setlocal paste!<cr>

" XWindows clipboard copy-paste for normal and visual modes
 " Paste from XWindows clipboard
nmap <leader>p "+p
vmap <leader>p "+p
" Copy to XWindows clipboard
nmap <leader>y "+y
vmap <leader>y "+y
" Cut to XWindows clipboard
nmap <Leader>d "+d
vmap <Leader>d "+d


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Backup, Temp, Current Dir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change to directory of current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" When vimrc is edited, autoreload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" autosave on losing focus
"autocmd BufLeave,FocusLost silent! wall

set autowriteall                    " autosave on buffer switch
set backupdir=~/.vim/_backup        " where to put backup files.
set directory=~/.vim/_temp          " where to put swap files.
set noswapfile                      " !!! DISABLE swap files !!!
"set nobackup                       " !!! DISABLE backup files

set undodir=~/.vim/_undo            " where to put undo files
set undofile                        " write undo files
set undolevels=1000                 " number of changes that can be undone
set undoreload=10000                " lines to save  on a buffer reload

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Start interactive EasyAlign in visual mode (e.g. vipea)
xmap ea <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. eaip)
nmap ea <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - YankRing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" YankRing shortcut
nnoremap <leader>r :YRShow<CR>

" YankRing window size
let g:yankring_window_height = 14

" YankRing dir
let g:yankring_history_dir='~/.vim/_yr'

" this is so that single char deletes don't end up in the yankring
let g:yankring_min_element_length = 2

" this makes Y yank from the cursor to the end of the line, which makes more
" sense than the default of yanking the whole current line (we can use yy for
" that)
function! YRRunAfterMaps()
    nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction
