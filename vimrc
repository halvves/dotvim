if &compatible
  set nocompatible
endif

source ~/.vim/packages.vim

filetype plugin indent on
set encoding=utf-8
syntax enable

set hidden
let g:markdown_syntax_conceal = 0

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
:silent! colorscheme seoul256
set background=dark

" Make ESC exit Insert/Visual instantly
vnoremap <ESC> <C-c>
inoremap <ESC> <C-c>


"*******************************
" STATUSLINE
"*******************************

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
  if ! exists('*sy#repo#get_stats()')
    \ || ! exists('*fugitive#head')
    \ || fugitive#head() == ''
    \ || winwidth('.') <= 90
    return ''
  endif

  let symbols = ['+', '~', '-']
  let stats = sy#repo#get_stats()
  let hunkline = ''

  for i in range(3)
    let gitchanged = stats[i] > 0 ? stats[i] : 0
    let hunkline .= printf('%s%s ', symbols[i], gitchanged)
  endfor

  return hunkline . fugitive#head() . ' |'
endfunction

function! StatuslineLinter() abort
  " if exists('*ale#statusline#Count')
  " for some reason this check on longer passes ever
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK ' : printf(
    \   '! %d X %d ',
    \   all_non_errors,
    \   all_errors
    \)
  " endif
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
set statusline+=\ %{StatuslineLinter()}


"*******************************
" GENERAL PLUGINS
"*******************************

" --------------
" EditorConfig
" ------
" play well with Fugitive. avoid loading EditorConfig for remote ssh
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" --------------
" Signify
" ------
let g:signify_vcs_list = ['git']
let g:signify_sign_show_count = 1


" --------------
" fzf
" ------
" ctrl-p plz
nnoremap <C-p> :Files<Cr>
" ctrl-f for ripgrep
nnoremap <C-f> :Rg<Cr>

" --------------
" Emmet
" ------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" --------------
" Ale
" ------
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'ERR'
let g:ale_echo_msg_warning_str = 'WARN'
let g:ale_echo_msg_format = '[%severity%][%linter%] %s'
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'rust': ['rustfmt'],
  \ 'javascript': ['prettier'],
  \ 'reason': ['refmt']
\}


" --------------
" Delimitmate
" ------
let delimitMate_expand_cr = 1
" let delimitMate_expand_space = 1


"*******************************
" SYNTAX/LANGUAGE PLUGINS
"*******************************

" --------------
" js
" ------
let g:javascript_plugin_jsdoc = 1 " enable highlighting jsdoc
let g:javascript_plugin_flow = 1  " enable highlighting flow
let g:jsx_ext_required = 0        " highlight jsx in files other than *.jsx


" --------------
" js libraries
" ------
let g:used_javascript_libs = 'jquery,underscore,react,vue,d3,angularjs'


" --------------
" json
" ------
" fixes a problem with indentLine that never lets you see quotes in json
let g:vim_json_syntax_conceal = 0


" --------------
" xml
" ------
" fix vim's weird closing tags
hi Tag        ctermfg=04
hi xmlTag     ctermfg=04
hi xmlTagName ctermfg=04
hi xmlEndTag  ctermfg=04


" --------------
"  rust
"  -----
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:racer_experimental_completer = 1
" put this line below in .bashrc or .zshrc
" export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
