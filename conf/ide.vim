" Configuration for development
" Plugins aimed at making VIM better for development

set formatoptions-=o " dont continue comments when pushing o/O
set pumheight=10     " completion window max size


let g:rainbow_active = 1 " enable rainbow parenthesis


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable
set foldlevelstart=99           " all folds open by default
set foldmethod=syntax           " fold based on syntax highlighting
set foldnestmax=10              " deepest fold level
nnoremap <leader><space> za     " open close folds


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-autoclose
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoClosePairs = "() {} []"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
" what gets executed exery space
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map NERDTree
"map <Leader>n :NERDTreeToggle<CR>
map <F1> :NERDTreeToggle<CR>

let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI=1

" Do not open on new tabs
let g:nerdtree_tabs_open_on_new_tab = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Comments: NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation: otherwise it looks weird when commenting big chunks
let g:NERDDefaultAlign = 'left'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the shortcut
nmap <F2> :TagbarToggle<CR>

" Ctags location
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'
"
let g:tagbar_width = 30             " Sidebar width
"let g:tagbar_expand = 1            " Expand GUI window size on open


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neomake
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufWritePost * Neomake
let g:neomake_verbose = 3
let g:neomake_open_list = 2
let g:neomake_highlight_columns = 0
let g:neomake_highlight_lines = 0
let g:neomake_error_sign = {'text': '✗', 'texthl': 'ErrorMsg'}
let g:warning_sign = {'text': '⚠', 'texthl': 'WarnMsg'}

noremap <F5> :Neomake<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Location List & Quickfix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F3> :lopen<CR>        " open location window
nmap <F4> :lclose<CR>       " close location window
nmap <Leader>jc :ll<CR>     " go to current error/warning
nmap <Leader>jn :lnext<CR>  " next error/warning
nmap <Leader>jp :lprev<CR>  " previous error/warning

" Allow using <CR> on quickfix entries
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips or UtilSnips as I like to call it
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsListSnippets = "<F6>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger = ""
let g:UltiSnipsJumpBackwardTrigger = ""
let g:UltiSnippetsDir="~/.vim/snips"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F7> :Autoformat<CR>

"disable the fallback to vim's indent file
let g:autoformat_autoindent = 0

let g:formatters_python = ['autopep8']
"let g:formatter_yapf_style = 'pep8'

let g:formatters_javascript = ['standard_javascript']

let g:formatters_c = ['astyle_c']
"let b:formatdef_custom_c='"astyle --mode=c --suffix=none --options=~/.astylerc"'
"let b:formatters_c = ['custom_c']

" Call autoformat on write
au BufWrite *.py :Autoformat
au BufWrite *.js :Autoformat
au BufWrite *.c :Autoformat
au BufWrite *.h :Autoformat

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe / autoclose
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" complete in comments
let g:ycm_complete_in_comments = 1

" use language keywords in completion
let g:ycm_seed_identifiers_with_syntax = 1

" collect from comments and strings
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" Fix autclose issues
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}

" Paths are relative to vim work dir
let g:ycm_filepath_completion_use_working_dir = 1

" Map the GoTo command
nnoremap <leader>jg :YcmCompleter GoTo<CR>

" Disable automatic popup of completion window
"let g:ycm_min_num_of_chars_for_completion = 99 " This disables the popup
"let g:ycm_key_invoke_completion = '<Tab>'

" this option turns on YCM's diagnostic display features:
" constantly updating messages  (e.g. errors/warnings) as you type
let g:Show_diagnostics_ui = 0
let g:ycm_always_populate_location_list = 0

nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki', 'syntax': 'markdown', 'ext': '.md'}]

let g:tagbar_type_vimwiki = {
          \   'ctagstype': 'vimwiki'
          \ , 'kinds': ['h:header']
          \ , 'sro': '&&&'
          \ , 'kind2scope': {'h': 'header'}
          \ , 'sort': 0
          \ , 'ctagsbin': '$HOME/.vim/vwtags.py'
          \ , 'ctagsargs': 'markdown'
          \ }
" shortcut to jump directly to vimwiki's dir
nnoremap <leader>wc :cd $HOME/Dropbox/wiki<CR>:pwd<CR>


"NOTE: local mappings are defined in ftplugin/vimwiki.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neomake_c_enabled_makers=['gcc', 'make']

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

" Autoformat with astyle
"autocmd BufNewFile,BufRead *.c set formatprg=astyle
"autocmd BufNewFile,BufRead *.h set formatprg=astyle


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neomake
let g:neomake_python_enabled_makers=['pylama']

" jedi
let g:jedi#goto_command = "<leader>jj"
let g:jedi#rename_command = "<leader>r"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"

" use or not jedi vim for completions on python code
let g:jedi#completions_enabled = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript set foldmethod=syntax

let g:neomake_javascript_enabled_makers = ['standard', 'eslint_d']

" automatic standard format on save
autocmd bufwritepost *.js silent !standard-format -w %
set autoread

" this is enabled globally:
"autocmd BufWritePre *.js :%s/\s\+$//e  " remove trailing whitespaces

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
" => Lua
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indenting by 2 spaces is enough for lua
autocmd FileType lua setlocal shiftwidth=2 tabstop=2

let g:neomake_lua_enabled_makers=['luacheck']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Latex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neomake_latex_enabled_makers = ['lacheck', 'proselint']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown syntax check
let g:neomake_markdown_enabled_makers = ['markdownlint', 'proselint', 'write-good']

" plasticboy/vim-markdown
" enable latex math
let g:vim_markdown_math = 1
" yaml frontmatter (e.g. jekyll)
let g:vim_markdown_frontmatter=1

" Markdown preview
map <leader>m :LivedownToggle<CR>
let g:livedown_open = 1
"let g:livedown_browser = "safari"
let g:livedown_port = 1338


" Goyo
nmap <F7> :Goyo<CR>

" vim-markdown
let g:markdown_fenced_languages = ['python', 'bash=sh', 'javascript', 'c']

" MathJax and Liquid syntax hihglighting
function! MathAndLiquid()
    "" Define certain regions
    " Block math. Look for "$$[anything]$$"
    syn region math start=/\$\$/ end=/\$\$/
    " inline math. Look for "$[not $][anything]$"
    syn match math_block '\$[^$].\{-}\$'

    " Liquid single line. Look for "{%[anything]%}"
    syn match liquid '{%.*%}'
    " Liquid multiline. Look for "{%[anything]%}[anything]{%[anything]%}"
    syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
    " Fenced code blocks, used in GitHub Flavored Markdown (GFM)
    syn region highlight_block start='```' end='```'

    "" Actually highlight those regions.
    hi link math Statement
    hi link liquid Statement
    hi link highlight_block Function
    hi link math_block Function
endfunction

augroup markdownplugins
  autocmd!
  autocmd FileType markdown,mkd,md call lexical#init()
                            \ | call litecorrect#init()
                            \ | call textobj#quote#init()
                            \ | call textobj#sentence#init()
                            \ | call MathAndLiquid()

augroup END

au BufRead,BufNewFile *.md Wrap

