" Configuration for development
" Plugins aimed at making VIM closer to a typical IDE

set formatoptions-=o " dont continue comments when pushing o/O
set pumheight=10     " completion window max size

let g:rainbow_active = 1 " enable rainbow parenthesis

" External make e.g.
" :set makeprg=make\ #<.o
" Show quickfix after :make, taken from
" http://vim.wikia.com/wiki/Automatically_open_the_quickfix_window_on_:make
autocmd QuickFixCmdPost [^l]*   nested  cwindow
autocmd QuickFixCmdPost l*      nested  lwindow

" Allow using <CR> on quickfix entries
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldlevelstart=99   " all folds open by default
set foldmethod=indent   " fold based on indent level
set foldnestmax=5       " deepest fold level
"set foldenable         " enable folding
set nofoldenable        " dont fold by default
nnoremap <CR> za        " open close folds with ENTER key


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
" what gets executed exery space 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map NERDTree
map <Leader>n :NERDTreeToggle<CR>

let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI=1

" Do not open on new tabs
let g:nerdtree_tabs_open_on_new_tab = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Comments: NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the shortcut
nmap <Leader>T :TagbarToggle<CR>

" Ctags location
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'
"
let g:tagbar_width = 30             " Sidebar width
"let g:tagbar_expand = 1            " Expand GUI window size on open


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>go :Gcheckout<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Git<cr>
nnoremap <leader>gp :Git push<cr>
"nnoremap <leader>gh :Git push heroku master<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" check files on open ?
let g:syntastic_check_on_open = 1
" check files on wq?
let g:syntastic_check_on_wq = 0
" disable signs -> these can be slow
let g:syntastic_enable_signs = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable automatic popup of completion window
"let g:ycm_min_num_of_chars_for_completion = 99 " This disables the popup
"let g:ycm_key_invoke_completion = '<Tab>'

" use jedi vim for completions on python code
let g:jedi#completions_enabled = 0

" this option turns on YCM's diagnostic display features.
" it also disables syntastic checkers
let g:Show_diagnostics_ui = 1 "default 1

"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UtilSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsListSnippets = "<c-m-s>"
let g:UltiSnipsJumpForwardTrigger = "<right>"
let g:UltiSnipsJumpBackwardTrigger = "<left>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ListToggle
"Disabled
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:lt_location_list_toggle_map = '<leader>l'
"let g:lt_quickfix_list_toggle_map = '<leader>q'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Syntastic C
" Note this can be disabled by YCM
let g:syntastic_c_checkers=['gcc', 'make']
"let g:syntastic_c_include_dirs = ['/usr/local/opt/openblas/include']

" - fswitch
" A "companion" file is a .cpp file to an .h file and vice versa
" Opens the companion file in the current window
nnoremap <leader>sh :FSHere<cr>
" Opens the companion file in the window to the left (window needs to exist)
nnoremap <Leader>sl :call FSwitch('%', 'wincmd l')<cr>
" Same as above, only opens it in window to the right
nnoremap <Leader>sr :call FSwitch('%', 'wincmd r')<cr>
" Creates a new window on the left and opens the companion file in it
nnoremap <Leader>sv :FSSplitLeft<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Syntastic Python
let g:syntastic_python_flake8_quiet_messages = { "regex": "F821" }
let g:syntastic_python_checkers = ['prospector']
"let g:syntastic_python_python_exec = '/usr/local/bin/python3'

" autoformat on save with yapf
autocmd BufWritePost *.py silent ! yapf -i --style=pep8; %

" jedi
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript set foldmethod=syntax
let g:syntastic_javascript_checkers = ['standard', 'eslint']
" automatic standard format on save
autocmd bufwritepost *.js silent !standard-format -w %
set autoread

autocmd BufWritePre *.js :%s/\s\+$//e  " remove trailing whitespaces

" => Jade
" autocmd *.jade: setlocal shiftwidth=2 tabstop=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
"au FileType go nmap <Leader>gd <Plug>(go-doc) "conflict with fugitive
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Go uses tabs instead of spaces (e.g. default & python)
au FileType go setlocal noexpandtab tabstop=4 shiftwidth=4" use tabs


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown options
"autocmd FileType *.md setl tw=120 lbr wrap
"
let g:vim_markdown_frontmatter=1

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
                            \ | call lexical#init()
                            \ | call litecorrect#init()
                            \ | call textobj#quote#init()
                            \ | call textobj#sentence#init()
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lua
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indenting by 2 spaces is enough for lua
autocmd FileType lua setlocal shiftwidth=2 tabstop=2

" - Syntastic lua
let g:syntastic_lua_checkers = ["luacheck --no-global"]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry
