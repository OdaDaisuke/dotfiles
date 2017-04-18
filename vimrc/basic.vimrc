set fenc=utf-8
set nobackup
set noswapfile
set nocompatible
set autoread
set number
set hidden
set showcmd
set title
set tabstop=4
set softtabstop=4
set list
set cursorline " highlight current line
set smartindent
set virtualedit=onemore
set spell " spell checking on
set nowrap " Dont wrap long lines
set splitright
set splitbelow

" ステータスライン
set laststatus=2
set showmode
set showcmd
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set ruler
set showcmd

" ステータスバーにgitブランチを表示
set statusline+=%{fugitive#statusline()}

" コマンド補完
set wildmenu
set history=5000

" 自動的に閉じかっこを挿入
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

" カッコジャンプ
set showmatch
source $VIMRUNTIME/macros/matchit.vim " %を打つと対応するタグにジャンプする

" 行が繰り返されてる場合、行単位じゃなくて表示行単位でカーソル移動
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

scriptencoding utf-8

filetype off

" folding
set foldmethod=indent
set foldlevel=10
set foldcolumn=3
set foldenable

" マウス設定
if has('mouse')
	set mouse=a
	if has('mouse_sgr')
		set ttymouse=sgr
	elseif v:version > 703 || v:version is 703 && has('patch632')
		set ttymouse=sgr
	else
		set ttymouse=xterm2
	endif
endif

" ペースト設定
if &term =~ "xterm"
	let &t_SI .= "\e[?2004h"
	let &t_EI .= "\e[?2004l"
	let &pastetoggle = "\e[201~"

	function XTermPasteBegin(ret)
		set paste
		return a:ret
	endfunction

	inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" 全角スペース表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
