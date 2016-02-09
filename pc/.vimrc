execute pathogen#infect()
syntax on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
colorscheme solarized

" powerline setup
set laststatus=2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set t_Co=256

if has('gui_running')
    set background=dark
    set lines=35
    set columns=110
    set guifont=Menlo\ for\ Powerline\ 11
    set guicursor+=a:blinkon0
endif

" addons:
" https://github.com/tpope/vim-pathogen
" https://github.com/scrooloose/nerdtree
" https://github.com/plasticboy/vim-markdown
" https://github.com/Valloric/YouCompleteMe
" https://github.com/altercation/vim-colors-solarized
