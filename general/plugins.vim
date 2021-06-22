if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugs')
" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C++ syntax highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'

" nice icons
Plug 'ryanoasis/vim-devicons'

" easy commentary
Plug 'tpope/vim-commentary'

" auto completion and much more
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" find files
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" working directory is start of project
Plug 'airblade/vim-rooter'

" vim startpage
Plug 'mhinz/vim-startify'

" live markdown preview in firefox
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" navigation and text manipulation
Plug 'tpope/vim-surround'

" Git
" displays git status for each line
Plug 'mhinz/vim-signify'

" pulse when entry found
Plug 'inside/vim-search-pulse'


" allows to repeat plugin mappings with '.'
Plug 'tpope/vim-repeat'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'

call plug#end()
