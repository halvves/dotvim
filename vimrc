execute pathogen#infect()
filetype plugin indent on
set nocompatible
set title
set laststatus=2
set history=1000
syntax enable
set background=dark
colorscheme solarized


set number
"""""""""""""""""""
" Powerline Plugin
"""""""""""""""""""
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
set laststatus=2
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
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
set showcmd
