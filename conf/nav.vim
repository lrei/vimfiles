"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Basic Movement - Force Correct
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" remap j and k to use screen lines instead of file lines
nnoremap j gj
nnoremap k gk

" - Move between windows
"Key combos:
" Ctrl-j move to the split below
map <C-j> <C-W>j
" Ctrl-k move to the split above
map <C-k> <C-W>k
" Ctrl-l move to the split to the right
map <C-h> <C-W>h
" Ctrl-h move to the split to the left
map <C-l> <C-W>l
" Open vertical split window and move to it
noremap <leader>w <C-w>v<C-w>l

" Default split window locations
set splitbelow
set splitright

" - Move between brackets using <tab>
nnoremap <tab> %
vnoremap <tab> %

" - Movement using vim-expand-region
" mapping:
"   + expand
"   - shrink
" Hit + to select one character
" Hit + again to expand selection to word
" Hit + again to expand to paragraph
" ...
" Hit - go back to previous selection if I went too far
"vmap K <Plug>(expand_region_expand)
"vmap J <Plug>(expand_region_shrink)

"vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, Tabs, Windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Open/Close/Save

" Fast open with <Leader>o
nnoremap <Leader>o :CtrlP<CR>

" :W sudo saves the file (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" - Tab management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Choosewin
nmap  -  <Plug>(choosewin)
" choosewin overlay feature
let g:choosewin_overlay_enable = 1
