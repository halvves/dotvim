execute pathogen#infect()
filetype plugin indent on
set nocompatible
set title
set laststatus=2
set history=1000
syntax enable
" set term=xterm-256color
set term=screen-256color
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set number
set laststatus=2
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
set showcmd

"""""""""""""""""""""""""""""""""
" give us nice EOL (end of line) characters
"""""""""""""""""""""""""""""""""
" set list
" set listchars=tab:▸\ ,eol:¬

"""""""""""""""""""
" Powerline Plugin
"""""""""""""""""""
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

""""""""""""""""""""
" Try To Config Airline
""""""""""""""""""""
" if !exists(‘g:airlinesymbols’)
" let g:airlinesymbols = {}
" endif let g:airlineleftsep = ‘»’
" let g:airlineleftsep = ‘?’
" let g:airlinerightsep = ‘«’
" let g:airlinerightsep = ‘?’
" let g:airlinesymbols.linenr = ‘?’
" let g:airlinesymbols.linenr = ‘?’
" let g:airlinesymbols.linenr = ‘¶’
" let g:airlinesymbols.branch = ‘? ‘
" let g:airlinesymbols.paste = ‘?’
" let g:airlinesymbols.paste = ‘Þ’
" let g:airlinesymbols.paste = ‘?’
" let g:airlinesymbols.whitespace = ‘?’
