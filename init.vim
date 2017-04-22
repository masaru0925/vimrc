"set tabstop=4
"set softtabstop=4
"set shiftwidth=4

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be improved
endif
"------------------------------
filetype on
filetype plugin indent on
"set syntax enable
syntax enable
set t_Co=256
"set fileformats=unix, dos

set colorcolumn=80
set smarttab
set expandtab
set virtualedit=block

set ignorecase
set smartcase
set nohlsearch
set wrapscan

set list
set number


" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" vを二回で行末まで選択
vnoremap v $h

" TABにて対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

" T + ? で各種設定をトグル
nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>


set shiftround          " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set infercase           " 補完時に大文字小文字を区別しない
set virtualedit=all     " カーソルを文字が存在しない部分でも動けるようにする
set hidden              " バッファを閉じる代わりに隠す（Undo履歴を残すため）
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start


"set listchars=tab:>-, trail:~
set listchars=tab:>-
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

set ambiwidth=double
"if has('path_extra')
"    set tags& tags + =.tags, tags
"endif
set laststatus=2
set showtabline=2

"set clipboard=unnamed

set backspace=eol,indent,start

set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
let g:python_hilight_all = 1

" Required:
set runtimepath+=/root/neovim/repos/github.com/Shougo/dein.vim

" Required:
"call dein#clear_state()
if dein#load_state('/root/neovim')
  call dein#begin('/root/neovim')

  " Let dein manage dein
  " Required:
  call dein#add('/root/neovim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('andviro/flake8-vim')
  call dein#add('davidhalter/jedi-vim')
  "call dein#add('hail2u/vim-css3-syntax')
  call dein#add('freeo/vim-kalisi')
  call dein#add('Haron-Prime/Antares')
  call dein#add('hynek/vim-python-pep8-indent')
  call dein#add('jacoborus/tender.vim')
  call dein#add('jelera/vim-javascript-syntax')
  call dein#add('kana/vim-smartinput')
  call dein#add('kana/vim-operator-user')
  call dein#add('kana/vim-operator-replace')
  call dein#add('kana/vim-textobj-user')
  call dein#add('kana/vim-textobj-indent')
  "call dein#add('neomake/neomake')
  "autocmd! BufWritePost, BufEnter * Neomake
  "let g:neomake_javascript_enabled_makers = ['eslint']
  "call dein#add('kevinw/pyflakes-vim')
  call dein#add('nathanaelkane/vim-indent-guides')
        let g:indent_guides_auto_colors = 0
        "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
        "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
        "hi IndentGuidesOdd  ctermbg=black
        "hi IndentGuidesEven ctermbg=darkgrey
        hi IndentGuidesOdd  ctermbg=white
        hi IndentGuidesEven ctermbg=lightgrey
  call dein#add('othree/html5.vim')
  call dein#add('rhysd/vim-operator-surround')
  call dein#add('romainl/Apprentice')
  "call dein#add('Shougo/denite.vim')
  "call dein#add('Shougo/deoplete.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/Unite.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('Shougo/vimfiler')
        let g:vimfiler_as_default_explorer = 1
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimproc', {'build': 'make'})
  call dein#add('Shougo/vimshell')
  call dein#add('sjl/badwolf')
  call dein#add('tomasr/molokai')

  set background=dark
  "colorscheme antares
  "colorscheme apprentice
  "colorscheme badwolf
  "colorscheme molokai
  "colorscheme solarized
  colorscheme tender
  "colorscheme kalisi
  highlight Normal ctermbg=none

  "call dein#add('zchee/deoplete-jedi.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


