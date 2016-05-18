set nocompatible              " be iMproved, required
filetype off                  " required

"###################################### VUNDLE ################################
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common for xolox's plugins - including easytags and lua plugins
Plugin 'xolox/vim-misc'
" Automated tag generation and syntax highlighting plugin
Plugin 'xolox/vim-easytags'

" UtilSnips Engine
"Plugin 'SirVer/ultisnips'
" UtilSnips snippets
"Plugin 'honza/vim-snippets'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar provides a sidebar to navigate functions and classes in the file
Plugin 'majutsushi/tagbar'
" powerline (statusbar at the bottom)
Plugin 'powerline/powerline'
" visually display indent levels
Plugin 'nathanaelkane/vim-indent-guides'
" solarized theme as a plugin
Plugin 'altercation/vim-colors-solarized'
" Badwolf theme
Plugin 'sjl/badwolf'
" Rail Casts theme
Plugin 'jpo/vim-railscasts-theme'
" Vivid Chalk theme
Plugin 'tpope/vim-vividchalk'
" Hybrid theme
Plugin 'w0ng/vim-hybrid'
" gruvbox theme
Plugin 'morhetz/gruvbox'
" Dracula
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text Editing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Provides a way to navigate the undo tree
Plugin 'sjl/gundo.vim'
" visually select increasingly larger regions of text using the same key
Plugin 'terryma/vim-expand-region'
" vim-surround provides ways to handle parentheses, quotes etc
Plugin 'tpope/vim-surround'
" nerdcommenter makes it easy to toggle comments on code
Plugin 'scrooloose/nerdcommenter'
" autoclose type an '(', an it automatically inserts a ')'
Plugin 'Townk/vim-autoclose'
" multiple selection a-la sublime text
Plugin 'terryma/vim-multiple-cursors'
" Highlights trailing whitespaces and removes with :StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'
" Align on symbols such as = or :
Plugin 'junegunn/vim-easy-align'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source Control and Filesystem Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'ctrlpvim/ctrlp.vim'
" nerdtree shows a file/dir tree in a 'sidebar'
Plugin 'scrooloose/nerdtree'
" vim-fugitive provides git support
Plugin 'tpope/vim-fugitive'
" shows git diff in the vim gutter
Plugin 'airblade/vim-gitgutter'

" using ctrlp instead of commandt
" Command-T provides fast mechanism for opening files
"Plugin 'git://git.wincent.com/command-t.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax and Language Specific Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Syntax
" Syntastic is a syntax checking plugin
Plugin 'scrooloose/syntastic'
"Automaticallyt format code using external code formaters (e.g. astyle)
Plugin 'Chiel92/vim-autoformat'
"YouCompleteMe is a code completion engine
"Plugin 'Valloric/YouCompleteMe'
" Toggle the display of the quickfix list and the location-list
"Plugin 'Valloric/ListToggle'


" - Lua
" Support for lua
Plugin 'xolox/vim-lua-ftplugin'

" - Latex
" Support for latex
Plugin 'lervag/vimtex'

" - Javascript
" javascript syntax highlighting
Plugin 'pangloss/vim-javascript'
" javascript code analysis
" Plugin 'ternjs/tern_for_vim'

" - Python
" A python plugin
"Plugin 'klen/python-mode'

" - Clojure
"Plugin 'tpope/vim-fireplace.git'
"Plugin 'guns/vim-clojure-static'
"Plugin 'vim-clojure-highlight'
"Plugin 'kien/rainbow_parantheses'

" - go
"Plugin 'fatih/vim-go'

" ------------
" All Plugins must be added before the following line
" ------------
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!`
"                     to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                     append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"##################################### REQUIREMENTS ###########################
"Document external requirements by Plugin/Language
" Work In Pogress

" Syntastic/Lua
"   - luacheck: luarocks install luacheck
" Syntastic/Python
"   - Python checkers: e.g. sudo pip install flake8 pylint pep8

" easy-tags
"   - exuberant-ctags: sudo apt-get install exuberant-ctags


"###################################### VIM ###################################

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" use Space as <Leader> key
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" use comma as <LocalLeader> key
let localleader = ","
let g:localleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd	    " display incomplete commands
set showmode    " Always show what mode we're in
set showmatch   " Show matching brackets when text indicator is over one
set mat=2       " showmatch blink for this many tenths of a second
set cursorline  " highlight cursor line
set scrolloff=5	" Show # lines above and below cursor when possible
"set visualbell " disable the beep
"set noerrorbells

" - WiLd menu
set wildmode=longest:full	" file name completion
set wildmenu			" Turn on the WiLd menu
set wildignore=*.o,*~,*.pyc	" Ignore compiled files

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
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase	" Ignore case when searching
set smartcase	" When searching try to be smart about cases
set hlsearch	" Highlight search results
set incsearch	" Makes search act like search in modern browsers
set number
set gdefault    " global search & replace instead of line

" Clear search highlight
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Disable Vim's default regex, uses normal regex
"nnoremap / /\v
"vnoremap / /\v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorschemes and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" - Theme Options
if has('gui_running')
	set guioptions=egmrt " hide toolbar
	" Use Dark Background
	set background=dark
	" Set Theme
	colorscheme solarized
	"colorscheme codeschool
	"colorscheme intothedark
	"colorscheme zenburn
	"let g:solarized_contrast="high"
	" set horizontal size
	set columns=80 " horizontal window size
else
	" Use Dark Solarized Theme for CLI
	"set background=dark
	"colorscheme solarized
	" Use Zenburn
	colorscheme zenburn
endif

" - Font Options
set anti enc=utf-8

if (system('uname') =~ "darwin")
    set gfn=Menlo:h16
    "set gfn=Inconsolata:h18
    "set gfn=Source\ Code\ Pro:h15 
    "set gfn=Source\ Code\ Pro\ Light:h15
else
    set gfn=Source\ Code\ Pro\ 14 " Set Font to SCP and size to 14
    "set gfn=Inconsolata\ Medium \14 " Set Font to Inconsolata and size to 14
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, Spaces, Tab and Indent Defaults
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8              " use utf8encoding

set backspace=indent,eol,start  " backspace through everything in I mode

" - Column, lines, etc
set nowrap                      " do not wrap lines
set  textwidth=79               " text width
set colorcolumn=79              " colored column at x chars
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

" Activate Wrap/Linebreak for text editing (non-code)
command! -nargs=* Wrap set wrap linebreak nolist tw=80

" - Highlight Trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" - EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipea)
xmap ea <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. eaip)
nmap ea <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Backup, Temp, Current Dir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change to directory of current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" When vimrc is edited, autoreload it
" autocmd! bufwritepost vimrc source ~/.vim/vimrc

" autosave on losing focus
autocmd BufLeave,FocusLost silent! wall

set autowriteall                    " autosave on buffer switch
set backupdir=~/.vim/_backup        " where to put backup files.
set directory=~/.vim/_temp          " where to put swap files.
set noswapfile                      " !!! DISABLE swap files !!!
"set nobackup                       " !!! DISABLE backup files

set undodir=~/.vim/_undo            " where to put undo files
set undofile                        " write undo files
set undolevels=1000                 " number of changes that can be undone
set undoreload=10000                " lines to save  on a buffer reload

" Quick Edit & Reload of vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Basic Movement - Force Correct
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" remap j and k to use screen lines instead of file lines
nnoremap j gj
nnoremap k gk

" - Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
noremap <leader>w <C-w>v<C-w>l	" Open vertical split window and move to it

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Open/Close/Save
" Fast saving with <Leader>w
nmap <leader>w :w!<cr>

" Fast open with <Leader>o
nnoremap <Leader>o :CtrlP<CR>

" :W sudo saves the file (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

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

" - CtrlP configuration
" top to bottom ordering
let g:ctrlp_match_window = 'bottom,order:ttb'
" always open files in new buffers
let g:ctrlp_switch_buffer = 0
" respect change of directories
let g:ctrlp_working_path_mode = 0
"@t this requires ag, i haven't gotten around to it
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=99   " all folds open by default
set foldmethod=indent   " fold based on indent level
nnoremap <Leader>z      " open/close folds

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
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"###################################### PLUGINS ###############################


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
" => NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Do not open on new tabs
let g:nerdtree_tabs_open_on_new_tab = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the shortcut
nmap <Leader>T :TagbarToggle<CR>

"let g:tagbar_ctags_bin='/usr/local/bin/ctags'	" Ctags location
let g:tagbar_width = 30                        	" Sidebar width
"let g:tagbar_expand = 1                       	" Expand GUI window size on open

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Go, vim-go
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
au FileType go setlocal noexpandtab " use tabs

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Syntastic C
let g:syntastic_c_checkers=['gcc', 'make']
"let g:syntastic_c_include_dirs = ['/usr/local/opt/openblas/include', '/usr/local/Cellar/gcc/5.2.0/lib/gcc/5/gcc/x86_64-apple-darwin14.0.0/5.1.0/include/']

autocmd BufWritePre *.c :%s/\s\+$//e  " remove trailing whitespaces
autocmd BufWritePre *.h :%s/\s\+$//e  " remove trailing whitespaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Syntastic Python
let g:syntastic_python_flake8_quiet_messages = { "regex": "F821" }
let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_python_exec = '/usr/local/bin/python3'

autocmd BufWritePre *.py :%s/\s\+$//e  " remove trailing whitespaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lua
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indenting by 2 spaces is enough for lua
autocmd FileType lua setlocal shiftwidth=2 tabstop=2

" - Syntastic lua
let g:syntastic_lua_checkers = ["luacheck --no-global"]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
let g:syntastic_javascript_checkers = ['standard', 'eslint']
" automatic standard format on save
autocmd bufwritepost *.js silent !standard-format -w %
set autoread

autocmd BufWritePre *.js :%s/\s\+$//e  " remove trailing whitespaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown options
"autocmd FileType *.md setl tw=120 lbr wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd VimEnter *       RainbowParenthesesToggle
"autocmd Syntax   clojure RainbowParenthesesLoadRound
"autocmd Syntax   clojure RainbowParenthesesLoadSquare
"autocmd Syntax   clojure RainbowParenthesesLoadBraces


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CommandT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <silent> <Leader>t :CommandT<CR>
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
"cnoremap %% <C-R>=expand('%:h').'/'<cr>

"map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
"map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_register_as_syntastic_checker = 1 "default 1
"let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_always_populate_location_list = 1 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


"let g:ycm_complete_in_strings = 1 "default 1
"let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
"let g:ycm_path_to_python_interpreter = '' "default ''


"let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
"let g:ycm_server_log_level = 'info' "default info

"where to search for .ycm_extra_conf.py if not found
"let g:ycm_confirm_extra_conf = 0

"[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
"let g:ycm_goto_buffer_command = 'same-buffer'
"let g:ycm_goto_buffer_command = 'vertical-split'
"let g:ycm_filetype_whitelist = { '*': 1 }
"let g:ycm_key_invoke_completion = '<C-Space>'


"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ListToggle
"Disabled
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:lt_location_list_toggle_map = '<leader>l'
"let g:lt_quickfix_list_toggle_map = '<leader>q'




