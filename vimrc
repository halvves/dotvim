execute pathogen#infect()
filetype plugin indent on
set nocompatible    " Duh
set title
set number          " Show line numbers
set showcmd
set laststatus=2
set history=1000    " More history
set tabstop=2       " The width of a TAB is set to 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=0   " Sets the number of columns for a TAB
set expandtab       " Always use space instead of tab chars
set list listchars=tab:▸\ ,eol:¬ " Nice EOL and TAB chars
syntax enable
" set term=xterm-256color
" set term=screen-256color
colorscheme onedark
let g:airline_theme='onedark'

" let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark

" let g:solarized_termcolors=256
" colorscheme xoria256
" colorscheme solarized
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Toggle Lexplore with Ctrl-E
" map <silent> <C-E> :Lexplore<CR>
" let g:netrw_banner=0         " No Banner 
" let g:netrw_winsize = 25     " Set Explorer Size - Default 50
" let g:netrw_browse_split = 4 " Hit enter in explorer to open selected
" let g:netrw_altv = 1         " Open files to the right
" let g:netrw_liststyle=3      " Tree View (set 0 for thin)
" set autochdir                " Change directory to the current buffer when opening files


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
