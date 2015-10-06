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

" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

