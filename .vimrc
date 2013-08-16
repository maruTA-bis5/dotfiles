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
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

filetype plugin on
filetype indent on

""""""""" vimshell
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '
