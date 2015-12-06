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
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
set showcmd

" Toggle Lexplore with Ctrl-E
map <silent> <C-E> :Lexplore<CR>
let g:netrw_banner=0         " No Banner 
let g:netrw_winsize = 30     " Set Explorer Size - Default 50
let g:netrw_browse_split = 4 " Hit enter in explorer to open selected
let g:netrw_altv = 1         " Open files to the right
let g:netrw_liststyle=3      " Tree View (set 0 for thin)
set autochdir                " Change directory to the current buffer when opening files

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
