execute pathogen#infect()
filetype plugin indent on
set nocompatible    " Vi improvvvvved
set encoding=utf-8
syntax enable

" General
set backspace=2     " Enable <BS> for everything
set title           " Filename in window title
set number          " Show line numbers
" set showcmd       " Show command on last line of screen
set noshowcmd       " Don't show command on last line of scrren
set showmatch       " Show matching brackets
set laststatus=2
set history=1000    " More history
set wildmenu
set cursorline
set noshowmode      " Don't show mode in status (already in Airline)
set list listchars=tab:▸\ ,eol:¬ " Nice EOL and TAB chars

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

" Ignore these files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Show context around current cursor position
set scrolloff=4
set sidescrolloff=8

" Colors
" set term=xterm-256color
set term=screen-256color
" set t_Co=256
colorscheme gruvbox
let g:airline_theme='gruvbox'
set background=dark

" Make ESC exit Insert/Visual instantly
vnoremap <ESC> <C-c>
inoremap <ESC> <C-c>

"-----------------------------
" PLUGIN CONFIGS
"-----------------------------
" EditorConfig
" play well with Fugitive. avoid loading EditorConfig for remote ssh
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Ctrl-P
" ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" indentLine
let g:indentLine_color_term = 238
let g:indentLine_color_gui = '#636D83'
let g:indentLine_color_tty_light = 15 " (default: 4)
let g:indentLine_color_dark = 15 " (default: 2)

" Ale (Linting)
let g:ale_sign_error = '●'              " Custom Error Sign
let g:ale_sign_warning = '●'            " Custom Warning Sign
let g:ale_sign_column_always = 1        " Keep Sign Gutter Open
let g:ale_echo_msg_error_str = 'ERR'    " Error text/symbol
let g:ale_echo_msg_warning_str = 'WARN' " Warning text/symbol
let g:ale_echo_msg_format = '[%severity%][%linter%] %s'
let g:ale_statusline_format = ['X %d', '! %d', 'OK']
function ALE() abort
    return exists('*ALEGetStatusLine') ? ALEGetStatusLine() : ''
endfunction
let g:airline_section_error = '%{ALE()}'

" Airline
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶' " others: ␊ ␤
let g:airline_symbols.branch = '' " others:| ⎇
let g:airline_symbols.paste = 'ρ' " others:Þ ∥
let g:airline_symbols.crypt = ''
let g:airline_symbols.whitespace = 'Ξ'

" Airline Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"-----------------------------
" SYNTAX
"-----------------------------
" JavaScript
let g:javascript_plugin_jsdoc = 1 " enable highlighting jsdoc
let g:javascript_plugin_flow = 1  " enable highlighting flow
let g:jsx_ext_required = 0        " highlight jsx in files other than *.jsx

" JSON (this config fixes a problem with indentLine
"           that never lets you see quotes in json)
let g:vim_json_syntax_conceal = 0  " unconceal quotes
