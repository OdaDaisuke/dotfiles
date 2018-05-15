set nocompatible
filetype plugin indent on

if !has('gui_running')
    set notimeout
    set ttimeout
    set timeoutlen=100
endif

set nowrap

scriptencoding utf-8
set encoding=utf-8
set guifont=*
set t_Co=256
set hlsearch
set ignorecase
set smartcase
set wrap
set cursorline

set nolist
set autoindent

set ruler
set number
set wildmenu
set showcmd

set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set clipboard=unnamed
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" key map
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" colorscheme hybrid
set background=dark
syntax on


" ---------------------------
"  lightline.vim settings
" ---------------------------

set ambiwidth=single
set laststatus=2
"wombat
let g:lightline = {
        \  'colorscheme': 'wombat',
        \  'mode_map': {'c': 'NORMAL'},
        \  'separator': { 'left': "\u2b80", 'right': "" },
        \  'subseparator': { 'left': "\u2b81", 'right': "" },
        \  'active': {
        \     'left': [ ['mode', 'paste'], [ 'fugitive', 'filename' ] ],
        \     'right': [ ['lineinfo'] ]
        \   },
        \  'inactive': {
        \     'right': [ ['lineinfo'] ]
        \  },
        \  'component_function': {
        \     'modified': 'LightlineModified',
        \     'fugitive': 'LightlineFugitive',
        \     'filename': 'LightlineFilename',
        \     'mode': 'LightlineMode',
        \   }
        \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '*' : &modifiable ? '' : '-'
endfunction

function! LightlineFilename()
  return (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#gMyFileformatet_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction



" ---------------------------
" develop settings
" --------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" neocomplete
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><C-Tab> pumvisible() ? "\<Up>" : "\<C-Tab>"

"neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"





" ---------------------------
" hobby settings
" ---------------------------

" TwitVim
let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1
let twitvim_count = 40

" テキスト上のリンクを開けるようにする
function! OpenLink()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
    exec "!open \"" . s:uri . "\""
  endif
endfunction

map <Leader>w :call OpenLink()<CR>

" markdown折りたたみ無効
let g:vim_markdown_folding_disabled=1

" markdownの末尾空白のハイライトを無効化
let g:extra_whitespace_ignored_filetypes = ['markdown']

" --------------------
" other settings
" --------------------

"NERDTree settings
let g:NERDTreeDirArrowExpandable  = '🍣'
let g:NERDTreeDirArrowCollapsible = '🍣'
let g:NERDTreeShowHidden = 1

" filetype set
au BufRead,BufNewFile *.md  set filetype=markdown
au BufRead,BufNewFile *.mjs set filetype=javascript
au BufRead,BufNewFile *.slim,*.slime setfiletype slim

au FileType javascript syn match jsDecorator '@[a-zA-Z_][0-9a-zA-Z_$]*'
au FileType javascript hi link jsDecorator Function


" Required:
if &compatible
  set nocompatible
endif
set runtimepath+=~/.dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.dein')
  call dein#begin('~/.dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neocomplete')
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('wavded/vim-stylus')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('othree/html5.vim')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('othree/yajs.vim')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('scrooloose/nerdtree')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tyru/open-browser.vim')
  call dein#add('basyura/twibill.vim')
  call dein#add('mattn/webapi-vim')
  call dein#add('vim-scripts/TwitVim')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('rust-lang/rust.vim')
  call dein#add('dart-lang/dart-vim-plugin')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('tyru/open-browser.vim')
  call dein#add('shime/vim-livedown')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('purescript-contrib/purescript-vim')
  call dein#add('slim-template/vim-slim')
  call dein#add('billyvg/tigris.nvim')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('zah/nim.vim')
  call dein#add('leafgarland/typescript-vim')

  " http://blog.remora.cx/2010/12/vim-ref-with-unite.html
  " """"""""""""""""""""""""""""""
  " " Unit.vimの設定
  " """"""""""""""""""""""""""""""
  " " 入力モードで開始する
  let g:unite_enable_start_insert=1
  " " バッファ一覧
  noremap <C-P> :Unite buffer<CR>
  " " ファイル一覧
  noremap <C-N> :Unite -buffer-name=file file<CR>
  " " 最近使ったファイルの一覧
  noremap <C-Z> :Unite file_mru<CR>
  " " sourcesを「今開いているファイルのディレクトリ」とする
  noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
  " " ウィンドウを分割して開く
  au FileType unite nnoremap <silent> <buffer> <expr> <C-J>
  " unite#do_action('split')
  au FileType unite inoremap <silent> <buffer> <expr> <C-J>
  " unite#do_action('split')
  " " ウィンドウを縦に分割して開く
  " au FileType unite nnoremap <silent> <buffer> <expr> <C-K>
  " unite#do_action('vsplit')
  " au FileType unite inoremap <silent> <buffer> <expr> <C-K>
  " unite#do_action('vsplit')
  " " ESCキーを2回押すと終了する
  " au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
  " au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>))))

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

autocmd VimEnter * execute 'NERDTree'

"NERDTree settings
let g:NERDTreeDirArrowExpandable  = '🍣'
let g:NERDTreeDirArrowCollapsible = '🍣'
let g:NERDTreeShowHidden = 1

"" filetype set
au BufRead,BufNewFile *.md  set filetype=markdown
au BufRead,BufNewFile *.jsx set filetype=javascript

au FileType javascript syn match jsDecorator '@[a-zA-Z_][0-9a-zA-Z_$]*'
au FileType javascript hi link jsDecorator Function]]
