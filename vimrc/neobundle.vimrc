if has('vim_starting')
    " 初回起動時のみruntimepathにNeoBundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    " NeoBundleが未インストールであればgit cloneする・・・・・・①
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle自身を管理
NeoBundleFetch 'Shougo/neobundle.vim'

"
" my plugins
"

" Emmet
NeoBundle 'mattn/emmet-vim'

" ファイルオープンを便利にする
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使用したファイルを表示
NeoBundle 'Shougo/neomru.vim'

" ステータスライン表示内容強化
NeoBundle 'itchyny/lightline.vim'

" NERDTREE
NeoBundle 'scrooloose/nerdtree'

" 末尾の空白をハイライト
NeoBundle 'bronson/vim-trailing-whitespace'

" インデント可視化
NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

" 複数行コメントを楽にする
NeoBundle 'tomtom/tcomment_vim'

call neobundle#end()

NeoBundleCheck
