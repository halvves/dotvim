command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

" minpac
call minpac#init()
call minpac#add('https://github.com/k-takata/minpac.git', {'type': 'opt'})

" general
call minpac#add('https://github.com/tpope/vim-vinegar.git')
call minpac#add('https://github.com/tpope/vim-surround.git')
call minpac#add('https://github.com/tpope/vim-commentary.git')
call minpac#add('https://github.com/tpope/vim-unimpaired.git')
call minpac#add('https://github.com/tpope/vim-eunuch.git')
call minpac#add('https://github.com/Yggdroot/indentLine.git')
call minpac#add('https://github.com/editorconfig/editorconfig-vim.git')
call minpac#add('https://github.com/raimondi/delimitmate')
call minpac#add('https://github.com/wellle/visual-split.vim.git')

" git
call minpac#add('https://github.com/tpope/vim-fugitive.git')
call minpac#add('https://github.com/junegunn/gv.vim')
call minpac#add('https://github.com/mhinz/vim-signify')

" language server protocol
call minpac#add('https://github.com/autozimu/LanguageClient-neovim', 
  \ {'branch': 'next', 'do': {-> system('bash install.sh')}})

" fuzzy
call minpac#add('https://github.com/junegunn/fzf.git',
  \ { 'do': './install --all' })
call minpac#add('https://github.com/junegunn/fzf.vim.git')

" linting
call minpac#add('https://github.com/w0rp/ale.git')

" tmux
call minpac#add('https://github.com/keith/tmux.vim.git')

" rust
call minpac#add('https://github.com/rust-lang/rust.vim.git')
call minpac#add('https://github.com/racer-rust/vim-racer.git')

" toml
call minpac#add('https://github.com/cespare/vim-toml.git')

" js
call minpac#add('https://github.com/pangloss/vim-javascript.git')
call minpac#add('https://github.com/elzr/vim-json.git')
call minpac#add('https://github.com/moll/vim-node.git')
call minpac#add('https://github.com/mxw/vim-jsx.git')
call minpac#add('https://github.com/othree/javascript-libraries-syntax.vim.git')

" html
call minpac#add('https://github.com/othree/html5.vim.git')
call minpac#add('https://github.com/mattn/emmet-vim.git')

" reasonml
call minpac#add('https://github.com/reasonml-editor/vim-reason-plus.git')

" colors
call  minpac#add('https://github.com/junegunn/seoul256.vim.git')
