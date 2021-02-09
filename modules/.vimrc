set iskeyword+=-
set formatoptions-=cro
set nocompatible
filetype on
filetype plugin indent on
set showcmd
let mapleader = " "
set noswapfile
set list listchars=tab:»·,trail:·,nbsp:·
set textwidth=80
set colorcolumn=+1
set ruler

syntax on
set noerrorbells visualbell t_vb=
set backspace=indent,eol,start
set bg=dark ai et sw=2 ts=2
set scrolloff=7
set hidden
set encoding=utf-8
set fileencoding=utf-8
set splitbelow
set splitright
set clipboard=unnamedplus
set cursorline
set showtabline=2
set noshowmode

"Default to not read-only in vimdiff
set diffopt+=vertical
set noro

"Search settings
set hlsearch
set incsearch
set ignorecase smartcase

"History
set history=1000

"Number
set number
"set relativenumber

"Menu
set wildmenu

"Fold
set foldcolumn=1
"set nofoldenable

"Undo
set undofile
set undodir=~/.vimundo/
set undolevels=1000

set updatetime=300
set timeoutlen=500

set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c

"Enables to search with '*' for visual selected, not just for word under
"cursor
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
