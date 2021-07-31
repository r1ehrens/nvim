"      (_)
"__   ___ _ __ ___  _ __ ___ 
"\ \ / / | '_ ` _ \| '__/ __|
 "\ V /| | | | | | | | | (__ 
"(_)_/ |_|_| |_| |_|_|  \___|



" BASICS
" load plugin file(ftplugin directory), load indent file and turn on filetype
" detection
filetype plugin indent on
set nocompatible

" Use one space, not two, after punctuation in command
set nojoinspaces

" automatic indent when pressing '<cr>' or 'o'
set autoindent

" With G or gg do not change column
set nostartofline


" rounds indent to multiple of shiftwidth
set shiftround

" Allows working with the mouse
set mouse=a

" show command in last line of screen
set showcmd
let mapleader = " "

" History
set history=200

" Number
set number
set numberwidth=5

set wildmode=full
" Menu
set wildmenu
" 2 lines for command
set cmdheight=2
" don't give completion messages
set shortmess+=c

set splitbelow
set splitright
set clipboard=unnamedplus

" always display tab
set showtabline=2

"display tabs and trailing whitespaces
set list listchars=tab:»·,trail:·,nbsp:·

set textwidth=80
set colorcolumn=+1

" display cursorline
set cursorline

" don't show checked after a command
set modelines=0
set nomodeline

" enable syntax highlighting
syntax on
set noerrorbells visualbell t_vb=

" allow to backspace to line before
set backspace=indent,eol,start

" always 7 lines away from end of screen
set scrolloff=7

" TAB BEHAVIOUR
" add spaces instead of tab
set expandtab
" tab counts as 8 spaces
set tabstop=8
" how many spaces an indent has
set shiftwidth=4
set softtabstop=0
set smarttab

" ENCODING
" allow to move away from unsaved buffer
set hidden
set encoding=utf-8
set fileencoding=utf-8

" DIFF
" Always use vertical diff
set diffopt+=vertical
" Default to not read-only in vimdiff
set noro

" FOLDS
" give space for fold display
set foldcolumn=1
" auto-save fold views
augroup remember_folds
    autocmd!
    autocmd BufWinLeave ?* silent! mkview
    autocmd BufWinEnter ?* silent! loadview
augroup END

" SWAP / UNDO / ADDITIONAL FILES
" do not generate any swapfiles
set noswapfile

" Set up persistent undo across all files.
" create undodir if not already exist
set undofile
if !isdirectory(expand("$HOME/.config/nvim/.undodir"))
    call mkdir(expand("$HOME/.config/nvim/.undodir"), "p")
endif
set undodir=$HOME/.config/nvim/.undodir
set undolevels=1000

" would create a backup-file everytime a file is overwritten
set nobackup
set nowritebackup

set viewdir=$HOME/.config/nvim/views/

" BUSY-TIME
set updatetime=300
" time to be able to type an additional key
set timeoutlen=500
" <esc> delay

set ttimeoutlen=0

" SEARCHING
" smartcase = when typing uppercase, find uppercase
set hlsearch incsearch ignorecase smartcase

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

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
