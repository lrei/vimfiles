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
" => UI Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visually display indent levels
Plugin 'nathanaelkane/vim-indent-guides'

" Airline and related plugins
Plugin 'vim-airline/vim-airline'
" Airline themes
Plugin 'vim-airline/vim-airline-themes'
" Vim buffers in airline
Plugin 'bling/vim-bufferline'

" startify: start screen
Plugin 'mhinz/vim-startify'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" zenburn/intothedark


" Themes
Plugin 'ayu-theme/ayu-vim'                  " ayu
Plugin 'joshdick/onedark.vim'               " One Dark
Plugin 'liuchengxu/space-vim-dark'          " space vim dark
Plugin 'liuchengxu/space-vim-theme'         " space-vim
Plugin 'nanotech/jellybeans.vim'            " jellybeans
Plugin 'jpo/vim-railscasts-theme'           " Railcasts theme
Plugin 'notpratheek/vim-luna'               " luna
Plugin 'w0ng/vim-hybrid'                    " Hybrid theme
Plugin 'ajh17/spacegray.vim'                " Spacegray
Plugin 'junegunn/seoul256.vim'              " seoul256
"Plugin 'raphamorim/lucario'                 " Lucario
"Plugin 'gmarik/ingretu'
"Plugin 'haishanh/night-owl.vim'             " night-owl
"Plugin 'chriskempson/base16-vim'

" Boring but good:
"Plugin lifepillar/vim-solarized8           " Solarized8
Plugin 'altercation/vim-colors-solarized'   " solarized theme as a plugin
Plugin 'jonathanfilip/vim-lucius'           " Lucius
Plugin 'morhetz/gruvbox'                    " gruvbox theme
Plugin 'sjl/badwolf'                        " Badwolf theme

" Unused cool but with brightness issues
Plugin 'dracula/vim'                        " Dracula
" Plugin 'aliou/moriarty.vim'                 " moriarty

" Unused but cool:
" Plugin 'noahfrederick/vim-hemisu'           " Hemisu
" Plugin 'reedes/vim-colors-pencil'           " Pencil
" Plugin 'ujihisa/unite-colorscheme'          " Unite
" Plugin 'lokaltog/vim-distinguished'         " Distinguished
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Movement Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-surround provides ways to handle parentheses, quotes etc
Plugin 'tpope/vim-surround'

" umimpaired.vim provides shortcuts to commonly used commands
Plugin 'tpope/vim-unimpaired'

" use dot command to repeat entire plugin maps
Plugin 'tpope/vim-repeat'

" Extra text object targets
Plugin 'wellle/targets.vim'

" Indent text object
Plugin 'michaeljsmith/vim-indent-object'

" Custom Text Object
" List at https://github.com/kana/vim-textobj-user/wiki
Plugin 'kana/vim-textobj-user'
Plugin 'glts/vim-textobj-comment'      " Comment Object
Plugin 'beloglazov/vim-textobj-quotes' " Quotes object
Plugin 'reedes/vim-textobj-quote'      " Typographic quotes etc
Plugin 'reedes/vim-textobj-sentence'   " Sentence object
Plugin 'kana/vim-textobj-line'         " Line object
Plugin 'bps/vim-textobj-python'        " Python functions and classes

" smooth scrolling
Plugin 'terryma/vim-smooth-scroll'

" ZoomWin
Plugin 'vim-scripts/ZoomWin'

" Window choosing
Plugin 't9md/vim-choosewin'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text Editing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move text up and down
" <A-k>   Move current line/selection up
" <A-j>   Move current line/selection down
Plugin 'matze/vim-move'

" Provides a way to navigate the undo tree
Plugin 'sjl/gundo.vim'

" visually select increasingly larger regions of text using the same key
Plugin 'terryma/vim-expand-region'

" autoclose type an '(', an it automatically inserts a ')'
Plugin 'Townk/vim-autoclose'

" YankRing allows referencing previously yanked, deleted or changed text
Plugin 'vim-scripts/YankRing.vim'

" Highlights trailing whitespaces and removes with :StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'

" Align on symbols such as = or :
Plugin 'junegunn/vim-easy-align'

" Text aligning (yet another)
" also a dependency for vim markdown
Plugin 'godlygeek/tabular'

" Pasting with correcting indention
Plugin 'sickill/vim-pasta'

" simplifies the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'

" Displaying of unicode char codes and entering them
Plugin 'tpope/vim-characterize.git'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search: Code Search, File Search, ...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sneak is a  motion to reach any location specified by two characters
" but works kind of like a mini-search/jump for 2 char combinations
Plugin 'justinmk/vim-sneak'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'ctrlpvim/ctrlp.vim'

" Search using :Ack [options] {pattern} [{directories}]
" recursively in {directories} (which defaults to the current directory)
" for the {pattern}.
Plugin 'mileszs/ack.vim'

" Visual Star Search (<leader>*)
"This plugin allows you to select some text using Vim's visual mode,
"then hit * and # to search for it elsewhere in the file.
Plugin 'bronson/vim-visual-star-search'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => IDE, Source Control and Filesystem Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree shows a file/dir tree in a 'sidebar'
Plugin 'scrooloose/nerdtree'
" show git status in nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" nerdcommenter makes it easy to toggle comments on code, etc
Plugin 'scrooloose/nerdcommenter'

" vim-fugitive provides git support
Plugin 'tpope/vim-fugitive'

" shows git diff in the vim gutter
Plugin 'airblade/vim-gitgutter'

" tagbar provides a sidebar to navigate functions and classes in the file
Plugin 'majutsushi/tagbar'

" Common for xolox's plugins - including easytags and lua
Plugin 'xolox/vim-misc'
" Automated tag generation and syntax highlighting plugin
Plugin 'xolox/vim-easytags'

"toggling the display of the quickfix list and the location-list
"Plugin 'Valloric/ListToggle'

" UtilSnips Engine
" Requires sys python === vim compile python
Plugin 'SirVer/ultisnips'

" UtilSnips snippets
Plugin 'honza/vim-snippets'

" Quickly switch between .h and .c
Plugin 'derekwyatt/vim-fswitch'

" VimWiki
Plugin 'vimwiki/vimwiki'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => JSON and CSV
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSON
Plugin 'elzr/vim-json'

" CSV
Plugin 'chrisbra/csv.vim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code plugins: Syntax, Completion, ...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Make/Syntax
Plugin 'neomake/neomake'

"Automaticallyt format code using external code formaters (e.g. astyle)
Plugin 'Chiel92/vim-autoformat'

"YouCompleteMe is a code completion engine
Plugin 'Valloric/YouCompleteMe'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Support for pyenv
Plugin 'lambdalisue/vim-pyenv'

" Virtual environment support
Plugin 'jmcantrell/vim-virtualenv'

" Better folding
Plugin 'tmhedberg/SimpylFold'

" Better autocompletion
Plugin 'davidhalter/jedi-vim'

" PEP8 indention
Plugin 'hynek/vim-python-pep8-indent'

" Better syntax highlight
Plugin 'vim-python/python-syntax'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript syntax highlighting
Plugin 'pangloss/vim-javascript'

" javascript code analysis
Plugin 'ternjs/tern_for_vim'

" Jade / Pug Templates
Plugin 'digitaltoad/vim-pug'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Alternate Files quickly (.c --> .h etc)
" This Plugin is BAD! Conflict with leader=space?
"Plugin 'vim-scripts/a.vim'

" Semantic Highlighting
"Plugin 'jeaye/color_coded'

" Generate YCM compiler flags
"Plugin 'rdnetto/YCM-Generator'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
Plugin 'fatih/vim-go'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fireplace.git'
Plugin 'guns/vim-clojure-static'
Plugin 'luochen1990/rainbow'
"Plugin 'tpope/vim-salve.git'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Latex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Support for latex
Plugin 'lervag/vimtex'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Languages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - Lua
" Support for lua
Plugin 'xolox/vim-lua-ftplugin'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Writing/Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Better Markdown Support
Plugin 'plasticboy/vim-markdown'
"Plugin 'gabrielelana/vim-markdown'
"Plugin 'tpope/vim-markdown'

" Markdown Folding via an expr
Plugin 'nelstrom/vim-markdown-folding'

" Markdown Preview
Plugin 'shime/vim-livedown'

" visual markdown editing
Plugin 'junegunn/goyo.vim'

" Markdown table editing
Plugin 'dhruvasagar/vim-table-mode'

" Dimming and stuff
Plugin 'junegunn/limelight.vim'

" Uncover usage problems in your writing
Plugin 'reedes/vim-wordy'

" Autocorrect
Plugin 'reedes/vim-litecorrect'

"Building on Vim’s spell-check and thesaurus/dictionary completion
Plugin 'reedes/vim-lexical'

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
"   - Python checkers: e.g. sudo pip install flake8 pylint pep8, prospector
"
" YAPF: pip install yapf
" JEDI: pip install jedi
"
" TernJS, run:
"npm install in the bundle/tern_for_vim directory.
"npm install standard eslint
"
" easy-tags
"   - exuberant-ctags: sudo apt-get install exuberant-ctags
"
"
"Airline + Powerline fonts
"See: https://github.com/powerline/fonts

"###################################### VIM ###################################
