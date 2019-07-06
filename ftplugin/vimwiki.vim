" NAVIGATION
" ----------
" Remap follow and go back to normal keys
:nmap <localleader>b <Plug>VimwikiGoBackLink
:nmap <localleader>f <Plug>VimwikiFollowLink

" SEARCH
" ------
" Map search and goto note
" Vim tselect works to browse by tag:
" :tselect /pattern
:nmap <localleader>wa :VWS<space>
:nmap <localleader>wg :VimwikiGoto<space>


" TABLES
" ------
" Move table column to left or right
:nmap <localleader>t :VimwikiTable<CR>
:nmap <localleader>tl :VimwikiTableMoveColumnLeft<CR>
:nmap <localleader>tr :VimwikiTableMoveColumnRight<CR>


" LISTS
" -----
" List level increase and decrease (whole item includes children)
:map <localleader>> <Plug>VimwikiIncreaseLvlSingleItem
:map <localleader>>> <Plug>VimwikiIncreaseLvlWholeItem
:map <localleader>< <Plug>VimwikiDecreaseLvlSingleItem
:map <localleader><< <Plug>VimwikiDecreaseLvlWholeItem

" Make a list item out of a normal line
noremap glo :VimwikiChangeSymbolTo -<CR>
"  Change whatever symbol to -
noremap glO :VimwikiChangeSymbolInListTo -<CR>

" CHECKBOXES
" ----------
" Remove checkbox from item
:map <localleader>x <Plug>VimwikiRemoveSingleCB
:map <localleader>xx <Plug>VimwikiRemoveCBInList

