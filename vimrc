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

" Color
" set term=xterm-256color
" set term=screen-256color
" set t_Co=256
colorscheme seoul256
set background=dark

" Make ESC exit Insert/Visual instantly
vnoremap <ESC> <C-c>
inoremap <ESC> <C-c>

" Statusline
let g:currentmode={
    \ 'n'  : 'Normal ',
    \ 'no' : 'N Operator Pending ',
    \ 'v'  : 'Visual ',
    \ 'V'  : 'V Line ',
    \ '^V' : 'V Block ',
    \ 's'  : 'Select ',
    \ 'S'  : 'S Line ',
    \ '^S' : 'S Block ',
    \ 'i'  : 'Insert ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V Replace ',
    \ 'c'  : 'Command ',
    \ 'cv' : 'Vim Ex ',
    \ 'ce' : 'Ex ',
    \ 'r'  : 'Prompt ',
    \ 'rm' : 'More ',
    \ 'r?' : 'Confirm ',
    \ '!'  : 'Shell ',
    \ 't'  : 'Terminal '
    \}

function! StatuslineReadOnly()
  if &readonly || !&modifiable
    return 'RO'
  else
    return ''
endfunction

function! StatuslineGit()
  if ! exists('*GitGutterGetHunkSummary')
    \ || ! exists('*fugitive#head')
    \ || fugitive#head() == ''
    \ || !get(g:, 'gitgutter_enabled', 0)
    \ || winwidth('.') <= 90
    return ''
  endif
  let symbols = [
    \ g:gitgutter_sign_added,
    \ g:gitgutter_sign_modified,
    \ '-'
    \ ]
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    call add(ret, symbols[i] . hunks[i])
  endfor
  return join(ret, ' ') . ' ' . fugitive#head() . ' |'
endfunction

function! StatuslineAle()
  return exists('*ALEGetStatusLine') ? ALEGetStatusLine() . '  ' : ''
endfunction

set laststatus=2
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}\ \|
set statusline+=\ %{StatuslineGit()}
set statusline+=\ %<%F%m\ %{StatuslineReadOnly()}\ %w
set statusline+=%= " Switch to the right side
set statusline+=%y
set statusline+=\ \ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]
" set statusline+=\ \ %3p%%\ ¶
set statusline+=\ \ %3l\/%-3L\ :\ %-3c\ \|
set statusline+=\ %{StatuslineAle()}

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

" indentLine (these colors looked better on a diff theme
" but seoul256 handles indent line nicely)
" let g:indentLine_color_term = 238
" let g:indentLine_color_gui = '#636D83'
" let g:indentLine_color_tty_light = 15 " (default: 4)
" let g:indentLine_color_dark = 15 " (default: 2)

" Ale (Linting)
" let g:ale_sign_error = '>'              " Custom Error Sign
" let g:ale_sign_warning = '-'            " Custom Warning Sign
let g:ale_sign_column_always = 1        " Keep Sign Gutter Open
let g:ale_echo_msg_error_str = 'ERR'    " Error text/symbol
let g:ale_echo_msg_warning_str = 'WARN' " Warning text/symbol
let g:ale_echo_msg_format = '[%severity%][%linter%] %s'
let g:ale_statusline_format = ['X %d', '! %d', 'OK']

" Delimitmate
let delimitMate_expand_cr = 1
" let delimitMate_expand_space = 1

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
