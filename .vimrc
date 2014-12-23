set nocompatible

filetype off
if has ('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun' " \r
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'glidenote/memolist.vim'
let g:memolist_path = "~/memo"
let g:memolist_memo_suffix = "markdown"
let g:memolist_unite = 1
let g:memolist_unite_option = "-auto-preview -start-insert"
NeoBundle 'yuratomo/w3m.vim'
NeoBundle 'KamunagiChiduru/vim-edit-properties'

filetype plugin indent on
filetype indent on
syntax on

set noswapfile
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set autoindent
set number
set ts=4
set shiftwidth=4
set noexpandtab

set fileencodings=ucs-bom,utf-8,iso-2022-jp,cp932,euc-jp,default,latin
