execute pathogen#infect()
filetype plugin indent on
set nocompatible    " Vi improvvvvved
set encoding=utf-8
syntax enable

" General
set backspace=2     " Enable <BS> for everything
set title           " Filename in window title
set number          " Show line numbers
set showcmd         " Show command on last line of screen
set showmatch       " Show matching brackets
set laststatus=2
set history=1000    " More history
set wildmenu
set cursorline
set noshowmode      " Don't show mode in status (already in Airline)
set list listchars=tab:▸\ ,eol:¬ " Nice EOL and TAB chars

" Colors
set background=dark
" set t_Co=256
colorscheme onedark
let g:airline_theme='onedark'
" set term=xterm-256color
set term=screen-256color

" Tabs
set autoindent
set expandtab       " Always use space instead of tab chars
set shiftwidth=2    " Indents will have a width of 2
set tabstop=2       " The width of a TAB is set to 2.
set softtabstop=2   " Sets the number of columns for a TAB
set smarttab

" Searches
set hlsearch        " Highlight search results
set incsearch       " Search while typing
set ignorecase      " Case insensitive searching
set smartcase       " Override ignorecase if upper case is typed

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" indentLine
let g:indentLine_color_term = 238
let g:indentLine_color_gui = '#636D83'
let g:indentLine_color_tty_light = 15 " (default: 4)
let g:indentLine_color_dark = 15 " (default: 2)

" vim-json (this config fixes a problem with indentLine
"           that never lets you see quotes in json)
let g:vim_json_syntax_conceal = 0  " unconceal quotes

" Toggle Lexplore with Ctrl-E
" map <silent> <C-E> :Lexplore<CR>
" let g:netrw_banner=0         " No Banner 
" let g:netrw_winsize = 25     " Set Explorer Size - Default 50
" let g:netrw_browse_split = 4 " Hit enter in explorer to open selected
" let g:netrw_altv = 1         " Open files to the right
" let g:netrw_liststyle=3      " Tree View (set 0 for thin)
" set autochdir                " Change directory to the current buffer when opening files

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']            " Enable eslint
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint' " Use project specific eslint

" Airline
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶' " others: ␊ ␤
let g:airline_symbols.branch = '| ⎇ '
let g:airline_symbols.paste = 'ρ' " others:Þ ∥
let g:airline_symbols.crypt = ''
let g:airline_symbols.whitespace = 'Ξ'

" Syntax
" JavaScript
let g:javascript_plugin_jsdoc = 1 " enable highlighting jsdoc
let g:javascript_plugin_flow = 1  " enable highlighting flow
let g:jsx_ext_required = 0        " highlight jsx in files other than *.jsx
