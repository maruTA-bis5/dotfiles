set expandtab
set autoindent
set tabstop=4
set nocompatible
filetype off 

if has('vim_starting')
    set runtimepath+=~/.vim/neobundle.vim.git

    call neobundle#rc(expand('~/.bundle'))
endif

NeoBundle 'https://github.com/tpope/vim-fugitive.git'
NeoBundle 'https://github.com/Shougo/vimshell.vim.git'

filetype plugin on
filetype indent on
