set fenc=utf-8
set nobackup
set noswapfile
set autoread
set number
set hidden
set showcmd
set title
set tabstop=4
set list

" color scheme
syntax on
colorscheme molokai

"現在の行を強調表示
set cursorline
set smartindent
set showmatch

set nocompatible               " be iMproved
filetype off


"te: Skip initialization for vim-tiny or vim-small.
if 0 | endif

filetype off

if has('vim_starting')
	  if &compatible
		      set nocompatible               " Be iMproved
		        endif

			  set runtimepath+=~/.vim/bundle/neobundle.vim
		  endif

		  call neobundle#begin(expand('~/.vim/bundle/'))

"		   originalrepos on github
		   NeoBundle 'Shougo/neobundle.vim'
		   NeoBundle 'Shougo/vimproc', {
		     \ 'build' : {
		         \ 'windows' : 'make -f make_mingw32.mak',
		             \ 'cygwin' : 'make -f make_cygwin.mak',
		                 \ 'mac' : 'make -f make_mac.mak',
		                     \ 'unix' : 'make -f make_unix.mak',
		                       \ },
		                         \ }
		                         NeoBundle 'VimClojure'
		                         NeoBundle 'Shougo/vimshell'
		                         NeoBundle 'Shougo/unite.vim'
		                         NeoBundle 'Shougo/neocomplcache'
		                         NeoBundle 'Shougo/neosnippet'
		                         NeoBundle 'jpalardy/vim-slime'
		                         NeoBundle 'scrooloose/syntastic'
		                         NeoBundle 'Shougo/vimfiler.vim'
		                         NeoBundle 'itchyny/lightline.vim'
		                         NeoBundle 't9md/vim-textmanip'
		  
		                         NeoBundle 'Shougo/unite.vim'
"		                         NeoBundle
"		                         'ujihisa/unite-colorscheme'
		                         NeoBundle 'tomasr/molokai'
		                         ""NeoBundle
"		  'https://bitbucket.org/kovisoft/slimv'

		  call neobundle#end()

		  filetype plugin indent on     " required!
		  filetype indent on
		  syntax on

		  NeoBundleCheck
